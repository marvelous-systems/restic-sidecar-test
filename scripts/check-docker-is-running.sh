#!/bin/sh
systemctl is-active --quiet docker
if [[ $? != 0 ]]
then
	echo "Docker is not running!"
	exit 10
fi
