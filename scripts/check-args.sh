#!/bin/sh

if [[ "$#" -ne 4 ]]; then
	echo "Usage:"
	echo ""
	echo "test.sh SFTP_USER SSH_KEY SFTP_HOST SFTP_PATH"
	echo ""
	echo "SFTP_USER		username with sftp access to SFTP_HOST"
	echo "SSH_KEY		path to ssh private key for sftp access"
	echo "SFTP_HOST		hostname of the sftp server to use"
	echo "SFTP_PATH		path on SFTP_HOST where the backup is tempporarily stored"
	exit 1
fi