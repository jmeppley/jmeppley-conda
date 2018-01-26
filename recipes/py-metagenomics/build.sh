#!/bin/bash

$PYTHON setup.py install 

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
rm -f $PREFIX/share/$PKG_NAME
ln -s $PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM $PREFIX/share/$PKG_NAME
cp -R ./databases $outdir/
