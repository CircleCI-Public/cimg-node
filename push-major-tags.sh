#!/usr/bin/env bash
# Pushes major version tags (such as `26`) for the versions built by this
# release, based on the versions listed in GEN-CHECK.
#
# A major tag only ever moves for the newest minor series in that major line,
# so releasing a patch to an older series (26.7.x while 26.8 exists) leaves the
# `26` tag pointing at the newer series.
set -eo pipefail

source ./manifest
source ./GEN-CHECK

image="${namespace}/${repository}"

for entry in "${GEN_CHECK[@]}"; do
	# Entries are either "26.8.1" or "26.8.1=current"
	version="${entry%%=*}"
	major="${version%%.*}"
	series="${version%.*}"

	# The newest minor series this repo holds for the major line, taken from
	# the version directories (26.0, 26.1, ... 26.8).
	latest_series=$(printf '%s\n' "${major}".*/ | tr -d '/' | sort -V | tail -1)

	if [[ $series != "$latest_series" ]]; then
		echo "Skipping ${image}:${major}; ${version} is not in the newest ${major}.x series (${latest_series})"
		continue
	fi

	docker buildx imagetools create -t "${image}:${major}" "${image}:${version}"
	for variant in "${variants[@]}"; do
		docker buildx imagetools create -t "${image}:${major}-${variant}" "${image}:${version}-${variant}"
	done
done
