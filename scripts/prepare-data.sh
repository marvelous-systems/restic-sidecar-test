#!/bin/sh
echo "Preparing data..."

mkdir "./data0"
mkdir "./data1"

N=100
for i in $(seq 1 "$N")
do
	random=$(dd if=/dev/urandom bs=8 count=10 status=none | tr -dc A-Za-z0-9)
	echo "$random" > "./data0/${i}"
	echo "$random" > "./data0/${i}.doppelganger"

	echo "$random" > "./data1/${i}"
	echo "$random" > "./data1/${i}.doppelganger"
done
