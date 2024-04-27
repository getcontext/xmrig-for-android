#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version="master"

if [ ! -d "xmrig" ]; then
  git clone https://github.com/getcontext/xmrig -b ${version}
  cd ..
  cd ..
else
  cd xmrig
  git checkout ${version}
  cd ..
  cd ..
  cd ..
fi
