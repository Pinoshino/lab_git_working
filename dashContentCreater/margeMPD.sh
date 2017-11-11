#!/bin/sh

base=$1
input=$2

if [ $# -ne 2 ];
then
	echo "Usage:./script [base MPD] [input MPD]"
else

	#Set insert line
	totalLine=`wc -l < ${base}`
	insertLine=`expr ${totalLine} - 2`

	#Extract Adaptation info. from input MPD
	startLine=`cat ${input} | grep "<Representation" -n | sed -e 's/:.*//g'`
	endLine=`expr ${startLine} + 5`

	for i in `seq ${startLine} ${endLine}`
	do
		context=`sed -n ${i}p ${input}`

		#Set insert line
		totalLine=`wc -l < ${base}`
		insertLine=`expr ${totalLine} - 2`

		sed -i -e "${insertLine}i \"${context}\"" ${base}
	done
fi
