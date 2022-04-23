#!/bin/sh
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/openresty-luajit/ubuntu jammy main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur-ubuntu-openresty-luajit.gpg \
    -d jammy "$@"
