#!/usr/bin/env bash

chmod +x ./shared/gen-dockerfiles.sh

if [[ -f GEN-CHECK ]]; then
  source ./GEN-CHECK
else
    echo "Please use gen-dockerfiles.sh or release.sh to generate files"
fi

./shared/gen-dockerfiles.sh "${GEN_CHECK[@]}"

check_diff () {
  local directory=${1}
	files=(build-images.sh push-images.sh)
	CHECK_DIR="false"
	CHECK_FILE="false"
  COMMIT=$(git log -n 1 | awk 'FNR== 1 {print $2}')

  for f in $files; do
    git diff --quiet "$COMMIT" -- "${f}" || CHECK_FILE="true"
    echo "File Discrepancy: $CHECK_FILE"
	done

  for i in ${GEN_CHECK[@]}; do
    i=$(echo $i | awk -F. '{print $(1)"."$(2)}')
    for j in $(ls -lR $i | awk '{print $9}'); do 
			git diff --quiet "$COMMIT" -- "${i}/${j}" || CHECK_DIR="true"
			echo "Directory Discrepancy: $CHECK_DIR"
		done
	done

	if [[ $CHECK_DIR == "true" ]] || [[ $CHECK_FILE == "true" ]]; then
    echo "Please use gen-dockerfiles.sh or release.sh to generate files"
    exit 1
  else
    echo "Changes have been verified"
	fi
}

check_diff "${GEN_CHECK[@]}"
