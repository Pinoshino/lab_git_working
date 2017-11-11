#!/bin/sh

input=$1

if [ $# -ne 1 ];
then
	echo "Usage:./script [input mpd]"
else
	#Extract all lines where are needed to modify
	count=`cat ${input} | grep "id=" -c`
	line=`cat ${input} | grep "id=" -n | sed -e 's/:.*//g'`

	for i in `seq 1 ${count}`
	do
		#Extract one line where is needed to modify
		point=`echo ${line} | awk '{print $'"${i}"'}'`

		if [ ${i} -eq 1 ];
		then
			#Modify
			sed -i -e ''${point}'s/id="0" //' -e ''${point}'s/width/maxWidth/' -e ''${point}'s/height/maxHeight/' ${input}
		else
			#Modify ID
			newID=`expr ${i} - 2`
			sed -i -e ''${point}'s/id="0"/id="'${newID}'"/' ${input}
		fi
	done

	sed -i -e 's/"  /  /' -e 's/>"/>/' ${input}

fi
			
