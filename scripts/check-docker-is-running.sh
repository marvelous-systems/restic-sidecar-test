#!/bin/sh
if [[ $(systemctl is-active --quiet docker) -ne 0 ]]
then
	echo "Docker is not running!"
	exit 10
fi
