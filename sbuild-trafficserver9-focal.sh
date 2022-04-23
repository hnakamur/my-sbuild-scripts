#!/bin/sh
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/openresty-luajit/ubuntu focal main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_openresty-luajit.gpg \
    -d focal "$@"
