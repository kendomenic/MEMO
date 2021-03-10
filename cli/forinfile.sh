#!/bin/bash
filename=$1
user=glssystem
a=0
for i in `cat $filename`
do
	echo $i
	a=$((a+1))
	echo "NO.$a": "$i"
	ssh -T -o "StrictHostKeyChecking no" $user@$i "ls -la && pwd && hostname"
done
