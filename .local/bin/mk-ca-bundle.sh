#!/bin/bash

DOTLOCAL=$HOME/.local
wget --no-check-certificate -O - https://raw.github.com/bagder/curl/master/lib/mk-ca-bundle.pl | sed -e '/^use LWP/d' > $DOTLOCAL/lib/mr/mk-ca-bundle.pl
chmod 755 $DOTLOCAL/lib/mr/mk-ca-bundle.pl
mkdir -p $DOTLOCAL/etc/ssl && cd $DOTLOCAL/etc/ssl
wget -O certdata.txt 'http://mxr.mozilla.org/mozilla/source/security/nss/lib/ckfw/builtins/certdata.txt?raw=1'
$DOTLOCAL/lib/mr/mk-ca-bundle.pl -n
export CURL_CA_BUNDLE=$DOTLOCAL/etc/ssl/ca-bundle.crt
