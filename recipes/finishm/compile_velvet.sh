# the included velvet has a glibc mismatch
RUBY_VERS=$1
FSHM_VERS=$2
VELVET_DIR=$PREFIX/lib/ruby/gems/${RUBY_VERS}/gems/finishm-${FSHM_VERS}/ext/src

rm $VELVET_DIR/velvet?
cd $VELVET_DIR && make velvetg velveth
