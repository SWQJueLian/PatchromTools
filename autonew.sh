#!/bin/bash

mydir=${1}

. build/envsetup.sh

mkdir ${mydir}

cd ${mydir}

../tools/releasetools/ota_target_from_phone -r
if [ $? -ne 0 ];then
	rm -rf ${mydir}
	echo "error...."
	exit 1
fi

cp tymf ${mydir}/makefile

make workspace

make fristpatch


