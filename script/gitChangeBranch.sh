#!/bin/bash

# check if execution is with -ex
if test $1 = '-xe' ;then
  arg=$2
else
  arg=$1
fi

# change work directory
cd ~/$arg

# get curent branch
currentBranch=`git branch --contains=HEAD`

# set change branch
if test ${currentBranch:2} = 'master' ;then
  changeBranch=develop
else
  changeBranch=master
fi

# change branch
git checkout -b ${changeBranch}

exit 0
