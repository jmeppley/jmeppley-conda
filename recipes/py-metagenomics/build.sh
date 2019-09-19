#!/bin/bash
$PYTHON -m pip install --no-deps --ignore-installed .

outdir=$PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
rm -f $PREFIX/share/$PKG_NAME
ln -s $PREFIX/share/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM $PREFIX/share/$PKG_NAME
cp -R ./databases $outdir/
