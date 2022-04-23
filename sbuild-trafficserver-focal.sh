#!/bin/sh
if [ $# -ne 1 ]; then
  echo "Usage: $0 dsc_filename" 1>&2
  exit 2
fi
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    -d focal "$@"

# ビルド時はUbuntu標準パッケージのluajitを使って、実行時にopenresty-luajitの自作debを使うのでも問題ない。
#TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
#    --extra-repository="deb http://ppa.launchpad.net/hnakamur/openresty-luajit/ubuntu focal main" \
#    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_openresty-luajit.gpg \
#    -d focal "$@"
