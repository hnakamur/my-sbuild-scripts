#!/bin/sh
TERM=unknown DEB_BUILD_OPTIONS=parallel=2 V=1 sbuild --sbuild-mode=buildd \
	-d focal \
        --extra-repository="deb http://127.0.0.1/freight focal main" \
        --extra-repository-key /var/cache/freight/pubkey.gpg \
        "$@"
