#!/bin/sh
echo "Altering some files..."
for i in $(seq 34 76); do
	echo "$i" >> "${WORKDIR}/$i"
done

echo "Deleting some files..."
for i in $(seq 84 93); do
	rm "${WORKDIR}/$i"
done