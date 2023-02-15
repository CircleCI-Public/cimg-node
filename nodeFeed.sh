#!/bin/bash
# extglob is enabled for extended globbing, which is used for the OpenJDK images
shopt -s extglob

vers=()

###
# the next three functions work as the version string parsers and are what decides which versions go into the vers array
# vereq checks for equality; in which case the version is skipped because it is considered up to date
# vergte checks if the version is greater, in which case we use that value
# newVers is a result of if a given directory, dated or by major.minor, exists; if is does, then we check the version currently
# inside the Dockerfile, otherwise, we know the version being passed is new because it is not being tracked
###

vereq() {
  if [ "$1" = "$2" ]; then
    echo "Current version $2 matches $1. Does not need an update"
    return 1
  else
    vergte "$1" "$2" "$3"
  fi
}

# paramVariable here refers to whether a specific repo utilizes another parameters. Some examples include:
# node: which uses the "=" to designate an additional parameter specifying lts or current
# openJDK: which uses the "#" to designate the specific URL of the binary download

vergte() {
  local paramVariable=$3
  if [ "$(printf '%s\n' "$1" "$2" | sort -V | head -n1)" = "$2" ]; then
    echo "Parsed version $1 is greater than $2" && \
    if [ -n "${paramVariable}" ]; then
      case $3 in
      lts)
        vers+=( "$1=lts" )
        ;;
      current)
        vers+=( "$1=current" )
        ;;
      *adoptium*)
        vers+=( "$1#$paramVariable" )
        ;;
      *)
        vers+=( "$1" )
        ;;
      esac
    fi
  else
    echo "Parsed version $1 is not greater than $2"
  fi
}

newVers() {
  local paramVariable=$2
  echo "directory does not exist; $1 is a new version" && \
  if [ -n "${paramVariable}" ]; then
    case $paramVariable in
      lts)
        vers+=( "$1=lts" )
        ;;
      current)
        vers+=( "$1=current" )
        ;;
      *adoptium*)
        vers+=( "$1#$paramVariable" )
        ;;
      *)
        vers+=( "$1" )
    esac
  fi
}

# directory check is simply a helper function to check the given directory in order to call newVers or not; it is enabled
# by the "searchterm" variable, which is nested within each "get" function, in order to determine the currentVersion we are
# comparing the newVersion to

directoryCheck() {
  local directory=$1
  local searchTerm=$2
  local paramVariable=$3

  if [ -d "$directory" ]; then
    currentVersion=$searchTerm
    echo "directory $directory exists; checking for matching versions: $currentVersion"
    vereq "$newVersion" "$currentVersion" "$paramVariable"
  else
    newVers "$newVersion" "$paramVariable"
  fi
}

###
# get functions for specific convenience images. Because naming conventions are not always clean and because there are so many.
# while this can be generalized, this is broken out individually for readability, understandability, and easier editing for any
# one specific convenience image
###

getPythonVersion() {
  RSS_URL="https://github.com/python/cpython/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "v" -f2 <<< ${version})
      majorMinor=${newVersion%.*}
      SEARCH_TERM=$(grep 'PYTHON_VERSION=' "$majorMinor"/Dockerfile | head -1 | cut -d "=" -f2 | cut -d "\\" -f1)
      directoryCheck "$majorMinor" "$SEARCH_TERM"
    fi
  done
}

getNodeVersions() {
  RSS_URL="https://github.com/nodejs/node/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "v" -f2 <<< ${version})
      majorMinor=${newVersion%.*}
      SEARCH_TERM=$(grep -m 1 'NODE_VERSION' "$majorMinor"/Dockerfile | cut -d " " -f3)
      buildParameter
      directoryCheck "$majorMinor" "$SEARCH_TERM" "$builtParam"
    fi
  done
}

getPHPVersion() {
  RSS_URL="https://github.com/php/php-src/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^php-[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "-" -f2 <<< ${version})
      majorMinor=${newVersion%.*}
      SEARCH_TERM=$(grep -m 1 'PHP_VERSION' "$majorMinor"/Dockerfile | cut -d " " -f3)
      directoryCheck "$majorMinor" "$SEARCH_TERM"
    fi
  done
}

getElixirVersion() {
  RSS_URL="https://github.com/elixir-lang/elixir/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "v" -f2 <<< ${version})
      majorMinor=${newVersion%.*}
      SEARCH_TERM=$(grep -m 1 'ELIXIR_VERSION=' "$majorMinor"/25.0.4/Dockerfile | cut -d "=" -f2)
      directoryCheck "$majorMinor" "$SEARCH_TERM"
    fi
  done
}

getGoVersion() {
  RSS_URL="https://github.com/golang/go/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^go[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(echo "$version" | tr -d 'go')
      # because Go (and Gradle) do not track the patch version if it ends in .0, this is necessary to account for the download URL
      if [[ $newVersion =~ ([0-9]+\.[0-9]+\.[0-9]) ]]; then
        majorMinor=${newVersion%.*}
      else
        majorMinor=${newVersion}
      fi
      SEARCH_TERM=$(grep -m 1 'GO_VER=' "$majorMinor"/Dockerfile | cut -d "=" -f2 | tr -d '"')
      directoryCheck "$majorMinor" "$SEARCH_TERM"
    fi
  done
}

# replaceVersions, instead of tracking the version being parsed, simply gets the latest version for a specific software and
# replaces what is in the Dockerfile by specifying the the "search term", which should exist in the Dockerfile as an ENV
# variable. The "software version" represents the actual version string of the software in a given direectory's Dockerfile

replaceVersions() {
  local searchTerm=$1
  local softwareVersion=$2

  currentVersion=$searchTerm
  if [[ $(vereq "$newVersion" "$currentVersion") =~ 'is greater' ]]; then
    sed -i.bak "s!$softwareVersion=$currentVersion!""$softwareVersion=$newVersion "'!g' "$templateFile"
    find . -name \*.bak -type f -delete
  fi
}

### android and OpenJDK specific functions

getGoogleCloudSDKVersion() {
  local templateFile=$1

  RSS_URL="https://github.com/GoogleCloudPlatform/cloud-sdk-docker/releases.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')
  SEARCH_TERM=$(grep -m 1 'GCLOUD_VERSION' "$templateFile" | cut -d " " -f3 | tr -d "\"" | cut -d "-" -f1)

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=${version}
      replaceVersions "GCLOUD_VERSION" "$SEARCH_TERM"
    fi
  done
}

getGradleVersion() {
  local templateFile=$1

  RSS_URL="https://github.com/gradle/gradle/releases.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(link)' | grep -E 'v[0-9]' | cut -d "/" -f9 | tr -d "\"")
  SEARCH_TERM=$(grep -m 1 'GRADLE_VERSION=' "$templateFile" | cut -d "=" -f2 | cut -d "\\" -f1)

  for version in $VERSIONS; do
    if [[ $version =~ ^v[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "v" -f2 <<< ${version})
      # because Gradle (and Go) do not track the patch version if it ends in .0, this is necessary to account for the download URL
      if [[ ${newVersion:(-2)} == ".0" ]]; then
        newVersion=${newVersion%.*}
      fi
      replaceVersions "GRADLE_VERSION" "$SEARCH_TERM"
    fi
  done
}

getMavenVersion() {
  local templateFile=$1

  RSS_URL="https://github.com/apache/maven/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')
  SEARCH_TERM=$(grep -m 1 'MAVEN_VERSION=' "$templateFile" | cut -d "=" -f2 | cut -d "\\" -f1)

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$  || $version =~ ^maven-[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=$(cut -d "-" -f2 <<< ${version})
      replaceVersions "MAVEN_VERSION" "$SEARCH_TERM"
    fi
  done
}

getSbtVersion () {
  local templateFile=$1

  RSS_URL="https://github.com/sbt/sbt/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      newVersion=${version}
      SEARCH_TERM=$(grep -m 1 'SBT_VERSION=' "$templateFile" | cut -d "=" -f2 | cut -d "\\" -f1)
      replaceVersions "SBT_VERSION" "$SEARCH_TERM"
    fi
  done
}

# helper function for OpenJDK since their naming conventions do not always align

getCleanVersion () {
  local dirtyVersion=$1

  newFullVersion=$(cut -d "-" -f2 <<< ${dirtyVersion})
  buildVersion=$(cut -d "+" -f2 <<< ${newFullVersion})
  newVer=${newFullVersion%+*}
  if [[ $newVer =~ ([0-9]+\.[0-9]+\.[0-9]+\.[0-9]) ]]; then
    newVersion=${newVer%.*}
  else
    newVersion=$newVer
  fi

  majorMinor=${newVersion%.*}
}

buildParameter() {
  if [ -n "$EXTRA_PARAM" ]; then
  # use case for different params
    case $CIRCLE_PROJECT_REPONAME in
      *cimg-node*)
        case $newVersion in
          19.*)
            export builtParam=current
            ;;
          18.*)
            export builtParam=lts
            ;;
          *)
            export builtParam=""
            ;;
        esac
        ;;
      *cimg-openjdk*)
        export builtParam="https://github.com/adoptium/temurin${jdkver}-binaries/releases/download/jdk-${newVersion}%2B${buildVersion}/OpenJDK${jdkver}U-jdk_x64_linux_hotspot_${newVersion}_${buildVersion}.tar.gz"
        ;;
      *)
        export builtParam=""
        ;;
    esac
  else
    unset builtParam
  fi
}

getOpenJDKVersion() {
  echo "Getting latest Gradle version..."
  getGradleVersion "Dockerfile.template"

  echo "Getting latest Maven version..."
  getMavenVersion "Dockerfile.template"

  echo "Getting latest sbt version..."
  getSbtVersion "Dockerfile.template"

  # add or remove tracked openjdk versions here
  openjdk_vers=(8 11 16 17 18 19)

  for jdkver in "${openjdk_vers[@]}"; do
    RSS_URL="https://github.com/adoptium/temurin${jdkver}-binaries/tags.atom"
    VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')
    for version in $VERSIONS; do
      case $version in
      # these two cases are duplicated in what they do, but only because the glob string is not clean. this could also exist
      # as an if/else statement
        jdk8u+("[0-9]") )
          getCleanVersion "$version"
          buildParameter "$jdkver" "$newVersion" "$buildVersion"
          SEARCH_TERM=$(grep -m 1 'JAVA_VERSION' "$majorMinor"/Dockerfile | cut -d " " -f3)
          directoryCheck "$majorMinor" "$SEARCH_TERM" "$builtParam"
        ;;
        jdk-[0-9]*)
          getCleanVersion "$version"
          buildParameter "$jdkver" "$newVersion" "$buildVersion"
          SEARCH_TERM=$(grep -m 1 'JAVA_VERSION' "$majorMinor"/Dockerfile | cut -d " " -f3)
          directoryCheck "$majorMinor" "$SEARCH_TERM" "$builtParam"
        ;;
        *)
          echo "Skipping $version"
        ;;
      esac
    done
  done
}

case $CIRCLE_PROJECT_REPONAME in
  *cimg-python*)
    getPythonVersion
    ;;
  *cimg-node*)
    EXTRA_PARAM=true
    getNodeVersions
    unset builtParam
    ;;
  *cimg-php*)
    getPHPVersion
    ;;
  *cimg-elixir*)
    getElixirVersion
    ;;
  *cimg-go*)
    getGoVersion
    ;;
  *cimg-openjdk*)
    EXTRA_PARAM=true
    getOpenJDKVersion
    unset builtParam
    ;;
  *)
    echo "CIRCLE_PROJECT_REPONAME does not match a supported image"
    exit 1
esac

if [ "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Initializing submodule..."
  git submodule update --init --recursive
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
