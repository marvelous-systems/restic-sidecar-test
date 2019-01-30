#!/bin/sh

. ./scripts/check-args.sh
. ./scripts/check-docker-is-running.sh

RET=0

PROJECT_NAME="marvelous-systems.restic-sidecar-test"
WORKDIR="$(pwd)/.${PROJECT_NAME}"

mkdir "$WORKDIR"
cd "$WORKDIR"

. ../scripts/prepare-data.sh
. ../scripts/perform-backup.sh
. ../scripts/alter-data.sh
# . ../scripts/restore-backup.sh
. ../scripts/validate-data.sh
. ../scripts/cleanup.sh

if [[ RET != 0 ]]; then
	echo "There were errors!"
fi

exit "$RET"