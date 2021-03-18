#!/bin/bash
filename=$1
remoteuser=infrasys
a=0
for i in `cat $filename`
do
	a=$((a+1))
	echo "NO.$a": "$i" >> os.txt
	#ssh -T -o "StrictHostKeyChecking no" $remoteuser@$i  "cat /etc/*rel* |grep release |head -1" >> os.txt
	echo "---------------------------------------------" >> os.txt 
done
