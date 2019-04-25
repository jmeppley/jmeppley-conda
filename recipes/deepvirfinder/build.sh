#!/bin/bash

# modify script to find models in conde env
mv dvf.py dvf.orig.py
cat dvf.orig.py \
 | perl -pe 's/default=os.+models\"\)/default=os.environ["CONDA_PREFIX"]+"/share/DeepVirfinder/models"/' \
 | perl -pe 's/default\s+\.\/models/%default/' \
 > dvf.py
rm dvf.orig.py

# make scripts executable
chmod a+x *.py

# install files
cp *.py ${PREFIX}/bin/
DVF_SHARE=${PREFIX}/share/DeepVirFinder
mkdir -p ${DVF_SHARE}
cp -r models test ${DVF_SHARE}
