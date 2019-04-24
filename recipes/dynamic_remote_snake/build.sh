#!/bin/bash

# copy support files
mkdir -p $PREFIX/share/drs/snake
cp download.snake $PREFIX/share/drs/snake/
echo ptyhon Version
echo $PYTHON
which $PYTHON
$PYTHON -V
$PYTHON setup.py install 
