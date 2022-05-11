#!/bin/bash
# shellcheck source=/dev/null
source ./ALIASES
ERRORS=0
DOCKER_TAGS=$(docker images cimg/node | awk '{print $2}')
for line in $DOCKER_TAGS
do
  if [ $line = "TAG" ]; then continue; fi
  if [[ "$line" =~ "lts" ]]; then NODE_VERSION="$latest";
  elif [[ "$line" =~ "current" ]]; then NODE_VERSION="$current";
  else NODE_VERSION="$([[ $line =~ [0-9]+\.[0-9]+(\.[0-9]+)? ]]; echo ${BASH_REMATCH[0]})";
  fi
  echo
  echo "Testing image: cimg/node:$line"
  echo "Expected Node version: $NODE_VERSION"
  RESULT=$(docker run -i cimg/node:$NODE_VERSION /bin/bash -c "cd ~/ && ls -lah && echo \$BASH_ENV && source \$BASH_ENV && node --version | grep -xq v\$NODE_VERSION && echo \$?")
  if [ "$RESULT" = "1" ]; then
    ERRORS=$((ERRORS+1))
    echo "Error: Node version is not $NODE_VERSION"
  fi
  echo "---"
done
if [ "$ERRORS" = "0" ]; then
  echo "All tests passed"
  exit 0
else
  echo "Some tests failed"
  exit 1
fi