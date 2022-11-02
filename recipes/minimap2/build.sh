#!/bin/bash

mkdir -p $PREFIX/bin

export CPATH=${PREFIX}/include

if [ "$build_platform" == "osx-arm64" ]; then
    echo make arm_neon=1 aarch64=1 minimap2
    make arm_neon=1 aarch64=1 minimap2
    echo make arm_neon=1 aarch64=1 sdust
    make arm_neon=1 aarch64=1 sdust
else
    echo make $MAKEFLAGS INCLUDES="-I$PREFIX/include" CFLAGS="-g -Wall -O2 -Wc++-compat -L$PREFIX/lib" minimap2 sdust
    make $MAKEFLAGS INCLUDES="-I$PREFIX/include" CFLAGS="-g -Wall -O2 -Wc++-compat -L$PREFIX/lib" minimap2 sdust
fi
cp minimap2 misc/paftools.js $PREFIX/bin
cp sdust $PREFIX/bin
