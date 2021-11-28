#!/bin/sh
if [ "x$1" = "x" ]; then
	exit 0;
fi

echo "${1}"

DEST="/Users/cameron/ents/out/"

dir="$(dirname "$1")"

mkdir -p "${DEST}${dir}"

ldid -e "$1" > "${DEST}${1}.plist"
if [ "$(file -b "${DEST}${1}.plist")" = "empty" ]; then
	rm "${DEST}${1}.plist"
fi
