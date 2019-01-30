#!/bin/sh
echo "Preparing data..."

N=100
for i in $(seq 1 "$N")
do
	random=$(dd if=/dev/urandom bs=8 count=10 status=none | tr -dc A-Za-z0-9)
	echo "$random" > "./${i}"
	echo "$random" > "./${i}.doppelganger"
done
