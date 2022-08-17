#!/usr/bin/env bash

vendor=$(dirname $BASH_SOURCE)
for project in $(ls $vendor); do
  bin=$vendor/$project/bin/$project
  if [ -f $bin ]; then
    source $bin $@
  fi
done
