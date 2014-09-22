#!/bin/bash
current_branch=$(git rev-parse --abbrev-ref HEAD) || exit 1

if [ -f ./cushy ]; then
	path_to_cushy="cushy"
elif [ -f ../cushy ]; then
	path_to_cushy="../cushy"
else
	exit 1
fi

./$path_to_cushy https://raw.githubusercontent.com/Queens-Hacks/cushy/$current_branch/test/sample.sh

