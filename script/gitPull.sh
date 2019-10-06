#!/bin/bash

# check if execution is with -ex
if test $1 = '-xe' ;then
  arg=$2
else
  arg=$1
fi

# change work directory
cd ~/$arg

# git pull
git checkout master
git pull origin master
git checkout develop
git pull origin deveop
git checkout master

exit 0
