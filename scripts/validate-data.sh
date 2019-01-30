#!/bin/sh
echo "Validating restored files..."

for i in $(seq 1 "$N")
do
	if [[ ! -f "./data0/$i" ]]; then
		echo "[Debug] File $i in data0 does not exist."
		RET=$((RET + 1))
	elif cmp -s "./data0/$i" "./data0/$i.doppelganger"; then
		RET=$((RET))
	else
		echo "[Debug] File $i in data0 is modified."
		RET=$((RET + 1))
	fi
done


for i in $(seq 1 "$N")
do
	if [[ ! -f "./data1/$i" ]]; then
		echo "[Debug] File $i in data1 does not exist."
		RET=$((RET + 1))
	elif cmp -s "./data1/$i" "./data1/$i.doppelganger"; then
		RET=$((RET))
	else
		echo "[Debug] File $i in data1 is modified."
		RET=$((RET + 1))
	fi
done