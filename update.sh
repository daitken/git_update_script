#!/bin/bash

if [ "$(id -u)" = "0" ]
then
  echo Getting updates ...;
  for f in */ ; do
    cd $f
    if [ -d .git ]
      then
      echo Checking for update in $f ...;
      git pull origin;
    fi
  cd ..
  done
  exit 1
else
  echo Must be root user to run updates. Try sudo ./update.sh;
  exit 1;
fi


