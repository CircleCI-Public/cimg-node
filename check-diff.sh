#!/usr/bin/env bash

chmod +x ./shared/gen-dockerfiles.sh

# Checks for the existence of GEN-CHECK, which generates inputs for the check-diff script when gen-dockerfiles is run.
# If it doesn't exist, then we know the script is not run, so we can exit
if [[ -f GEN-CHECK ]]; then
  source ./GEN-CHECK
else
    echo "Please use gen-dockerfiles.sh or release.sh to generate files"
    exit 1
fi

# runs gen-dockerfiles to compare the commit's changed files to what gen-dockerfiles would have
./shared/gen-dockerfiles.sh "${GEN_CHECK[@]}"

check_diff () {
  local directory=${1}
	files=(build-images.sh push-images.sh)
	CHECK_DIR="false"
	CHECK_FILE="false"
  COMMIT=$(git log -n 1 | awk 'FNR== 1 {print $2}')

  # Checks specific build and push files that are generated
  for f in $files; do
    git diff --quiet "$COMMIT" -- "${f}" || CHECK_FILE="true"
    echo "File Discrepancy: $CHECK_FILE"
	done
  
  # Checks for the directories affected by the dockerfile generation
  for i in ${GEN_CHECK[@]}; do
    i=$(echo $i | awk -F. '{print $(1)"."$(2)}')
    for j in $(ls -lR $i | awk '{print $9}'); do 
			git diff --quiet "$COMMIT" -- "${i}/${j}" || CHECK_DIR="true"
			echo "Directory Discrepancy: $CHECK_DIR"
		done
	done
  # If there are any differences in any of the files or directories above, then we know to trigger the gen-dockerfiles script
	if [[ $CHECK_DIR == "true" ]] || [[ $CHECK_FILE == "true" ]]; then
    echo "Please use gen-dockerfiles.sh or release.sh to generate files"
    exit 1
  else
    echo "Changes have been verified"
	fi
}

check_diff "${GEN_CHECK[@]}"
