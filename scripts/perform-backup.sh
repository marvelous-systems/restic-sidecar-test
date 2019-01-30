#!/bin/sh
echo "Performing backup..."
 
# Args:
#
# 1: sftp username
# 2: path to ssh private key
# 3: backup destination hostname
# 4: repository path on backup destination

DOCKER_OUTPUT=$(docker run \
	-v "$2:/restic/key" \
	-v "$WORKDIR/data0:/data0" \
	-v "$WORKDIR/data1:/data1" \
	-e SFTP_PATH="$4" \
	-e SFTP_USER="$1" \
	-e SFTP_HOST="$3" \
	-e SFTP_PORT=22 \
	-e RESTIC_PASSWORD=blablub  \
	-e BACKUP_PATHS=/data0,/data1  \
	restic-backup-sidecar 2>&1)
echo "$DOCKER_OUTPUT"

RESTORE_SNAPSHOTS=$(echo "$DOCKER_OUTPUT" | grep "saved" | awk "{print \$2}" | tr '\n' ',')

echo "[Debug] The hashes are $RESTORE_SNAPSHOTS"