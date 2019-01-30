#!/bin/sh
echo "Performing backup..."
 
# Args:
#
# 1: sftp username
# 2: path to ssh private key
# 3: backup destination hostname
# 4: repository path on backup destination

SNAPSHOT_HASH=($(docker run \
	-v "$2:/restic/key" \
	-v "$WORKDIR:/payload" \
	-e SFTP_PATH="$4" \
	-e SFTP_USER="$1" \
	-e SFTP_HOST="$3" \
	-e SFTP_PORT=22 \
	-e RESTIC_PASSWORD=blablub  \
	-e BACKUP_PATHS=/payload \
	restic-backup-sidecar 2>&1 | tail -1))
SNAPSHOT_HASH="${SNAPSHOT_HASH[1]}"

echo "[Debug] The SNAPSHOT_HASH is $SNAPSHOT_HASH"