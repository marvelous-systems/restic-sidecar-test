#!/bin/sh
echo "Preparing payload..."
ls "$TEMPDIR"

N=100
for i in $(seq 1 "$N")
do
	random=$(dd if=/dev/urandom bs=8 count=10 | tr -dc A-Za-z0-9)
	echo "$random" > "${TEMPDIR}/${i}.txt"
done
