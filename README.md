## Automated test for restic-(backup|restore)-sidecar

Returns 0 on success, 1 on wrong usage, 10 on test failure.

```bash
$ ./test.sh 
Usage:

test.sh SFTP_USER SSH_KEY SFTP_HOST SFTP_PATH

SFTP_USER       username with sftp access to SFTP_HOST
SSH_KEY         path to ssh private key for sftp access
SFTP_HOST       hostname of the sftp server to use
SFTP_PATH       path on SFTP_HOST where the backup is 
                tempporarily stored
```

### TODO

spawn sftp host locally using docker to remove need for external sftp