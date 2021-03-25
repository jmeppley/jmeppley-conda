# conda isn't fising the shebangs, so we'll change to use bin/env
find $PREFIX/bin -type f -executable -exec grep -Hn "ruby$" {} \; \
  | grep ":1:#\!" \
  | sed -r "s/:1:#.+//" \
  | while read B; do
    echo "#!/usr/bin/env ruby" > $B.tmp;
    cat $B >> $B.tmp;
    rm $B;
    mv $B.tmp $B;
    chmod a+x $B;
done

