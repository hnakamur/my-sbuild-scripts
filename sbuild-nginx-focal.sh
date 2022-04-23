#!/bin/sh
if [ $# -eq 0 ]; then
  echo "Usage: $0 ../nginx-XXX.dsc" 1>&2
  exit 1
fi
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/openresty-luajit/ubuntu focal main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_openresty-luajit.gpg \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/libsxg/ubuntu focal main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_libsxg.gpg \
    -d focal "$@"
