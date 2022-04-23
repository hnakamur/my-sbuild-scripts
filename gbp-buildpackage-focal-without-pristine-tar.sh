#!/bin/sh
gbp buildpackage --git-export-dir=.. -p/home/hnakamur/bin/gpg-passphrase -S -sa -d --git-dist=focal
