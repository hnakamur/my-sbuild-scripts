#!/bin/sh
if [ $# -eq 0 ]; then
  echo "Usage: $0 ../cmake-XXX.dsc" 1>&2
  exit 1
fi
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/libzstd/ubuntu bionic main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_libzstd.gpg \
    --extra-repository="deb http://ppa.launchpad.net/hnakamur/libarchive/ubuntu bionic main" \
    --extra-repository-key /etc/apt/trusted.gpg.d/hnakamur_ubuntu_libarchive.gpg \
    "$@"
