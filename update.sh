#!/bin/bash
set -eo pipefail

curl -fsSL 'https://download.nextcloud.com/server/releases/' |tac|tac| \
	grep -oE 'nextcloud-[[:digit:]]+(\.[[:digit:]]+){2}' | \
	grep -oE '[[:digit:]]+(\.[[:digit:]]+){2}' | \
	sort -uV | \
	tail -1 > latest.txt

version=$( cat latest.txt )

sed -i "/nextcloud/s/.*/FROM nextcloud:$version/" Dockerfile