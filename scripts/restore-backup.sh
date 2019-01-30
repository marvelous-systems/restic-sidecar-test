#!/bin/sh
echo "Restoring backup..."
DOCKER_OUTPUT=$(docker run \
	-v "$2:/restic/key" \
	-v "$WORKDIR/data0:/data0" \
	-v "$WORKDIR/data1:/data1" \
	-e SFTP_PATH="$4" \
	-e SFTP_USER="$1" \
	-e SFTP_HOST="$3" \
	-e SFTP_PORT=22 \
	-e RESTIC_PASSWORD=blablub  \
	-e RESTORE_SNAPSHOTS="${RESTORE_SNAPSHOTS}" \
	restic-restore-sidecar 2>&1)
echo "$DOCKER_OUTPUT"