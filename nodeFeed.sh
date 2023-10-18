#!/usr/bin/env bash
vers=()

if [ -f shared/automated-updates.sh ]; then
  source shared/automated-updates.sh
else
  echo "Check if submodule was loaded; automated-updates.sh is missing"
  exit 1
fi

buildParameter () {
  local newVersionString=$1
  case $newVersionString in
    21.*)
      export builtParam="=current"
      ;;
    18.*)
      export builtParam="=lts"
      ;;
    *)
      export builtParam=""
      ;;
  esac
}

getNodeVersions() {
  RSS_URL="https://github.com/nodejs/node/tags.atom"
  VERSIONS=$(curl --silent "$RSS_URL" | grep -E '(title)' | tail -n +2 | sed -e 's/^[ \t]*//' | sed -e 's/<title>//' -e 's/<\/title>//')

  for version in $VERSIONS; do
    if [[ $version =~ ^[0-9]+(\.[0-9]+)*$ ]]; then
      generateVersions "$(cut -d "v" -f2 <<< "${version}")"
      # shellcheck disable=SC2154
      # majorMinor is passed down as a variable from generateVersions
      generateSearchTerms "NODE_VERSION" "$majorMinor"/Dockerfile
      # shellcheck disable=SC2154
      # newVersion is passed down as a variable from generateVersions
      buildParameter "$newVersion"
      directoryCheck "$majorMinor" "$SEARCH_TERM" "$builtParam"
      if [[ $(eval echo $?) == 0 ]]; then
        generateVersionString "$newVersion" "$builtParam"
      fi
    fi
  done
}

getNodeVersions

if [ -n "${vers[*]}" ]; then
  echo "Included version updates: ${vers[*]}"
  echo "Running release script"
  ./shared/release.sh "${vers[@]}"
else
  echo "No new version updates"
  exit 0
fi
