#!/bin/bash
set -e

VERSION="11"
NAME="clr-desktop-defaults"
./scripts/git-archive-all.sh --format tar --prefix ${NAME}-${VERSION}/ --verbose -t HEAD ${NAME}-${VERSION}.tar
xz -9 "${NAME}-${VERSION}.tar"

gpg --armor --detach-sign "${NAME}-${VERSION}.tar.xz"
gpg --verify "${NAME}-${VERSION}.tar.xz.asc"               
