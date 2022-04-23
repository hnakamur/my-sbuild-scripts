#!/bin/sh
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/postgresql/ubuntu bionic main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_postgresql.gpg \
    "$@"

#    --extra-repository="deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" \
#    --extra-repository-key /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg \
#    "$@"
