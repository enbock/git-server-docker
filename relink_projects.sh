#!/bin/sh

rm ~git/* > /dev/null 2>&1 || true

ls -1 /git-server/repos/ | while read repo
do
  if ! test -L $repo
  then
    rm -rf ~git/$repo > /dev/null 2>&1 || true
    ln -s /git-server/repos/$repo ~git/$repo
  fi
done
