#!/bin/sh

TEMPDIR=$(mktemp)

. ./scripts/check-docker-is-running.sh
. ./scripts/prepare-payload.sh
. ./scripts/perform-backup.sh
. ./scripts/restore-backup.sh
. ./scripts/validate-restore.sh
