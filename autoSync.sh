#!/bin/bash

echo "------- Begin autoSync Source Code -----"

~/bin/repo sync -c -j20

while [ $? -ne 0 ]
do
	echo "----- failed, Try again ------"
	#-f, --force-broken    continue sync even if a project fails to sync
	~/bin/repo sync -c -j20
done
