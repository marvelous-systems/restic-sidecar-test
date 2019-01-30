#!/bin/sh
echo "Validating restored files..."

for i in $(seq 1 "$N")
do
	if [[ ! -f "./$i" ]]; then
		# echo "[Debug] File $i does not exist."
		RET=$((RET + 1))
	elif cmp -s "./$i" "./$i.doppelganger"; then
		RET=$((RET))
	else
		# echo "[Debug] File $i is modified."
		RET=$((RET + 1))
	fi
done