#!/bin/bash

if [ -z "$1" ]
then
  >&2 echo "include a commit message"
  exit 1
fi

npm test && git commit -am "$1" || git reset HEAD --hard