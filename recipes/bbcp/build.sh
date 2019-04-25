#!/bin/bash

PLATFORM=$(./MakeSname)
ENVINCLUDE="-I. -I${PREFIX}/include"
LNXLIBS64="-L${PREFIX}/lib -lnsl -lpthread -lrt -lz -lcrypto"
echo "STARTING MAKE"
cd src && make ENVINCLUDE="-I. -I${PREFIX}/include" LNXLIBS64="${LNXLIBS64}"
echo "Installing"
cp ../bin/${PLATFORM}/bbcp $PREFIX/bin/
