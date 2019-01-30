#!/bin/sh
echo "Altering some files in data0..."
for i in $(seq 34 76); do
	echo "$i" >> "${WORKDIR}/data0/$i"
done

echo "Deleting some files in data0..."
for i in $(seq 84 93); do
	rm "${WORKDIR}/data0/$i"
done

echo "Altering some file in data1..."
for i in $(seq 34 76); do
	echo "$i" >> "${WORKDIR}/data1/$i"
done

echo "Deleting some files  in data1..."
for i in $(seq 84 93); do
	rm "${WORKDIR}/data1/$i"
done