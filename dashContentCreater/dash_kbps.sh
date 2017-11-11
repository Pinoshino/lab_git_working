DIR="/home/network"
PACK="${DIR}/edash_packager/src/out/Release"
CODEC="libx264"
LOG="${DIR}/log"
CONTENT="${DIR}/dashContentCreater/content"
RESO="1920x1080"


INPUT=$1
MIN=$2
MAX=$3
INT=$4
FRAME=$5

if [ $# -ne 5 ];
then
	echo "Usage:./script [video source (.yuv)] [min rate (Mbps)] [max (Mbps)] [interval (Mbps)] [frame rate (fps)]"
	echo "*** Example ***"
	echo "Video: tearsofsteel.yuv (24fps)"
	echo "1 - 10 kbps, in each 1 kbps"
	echo "*** command ***"
	echo "./script tearsofsteel.yuv 1 10 1 24"

else

	#Set parameters inspired by Netflix setting 
	#Source video name
	SRC=`echo ${INPUT%.*}`

	#Number of Representasions
	NUM=`expr \( ${MAX} - ${MIN} \) / ${INT} + 1`

	#Frame rate
	if [ "${FRAME}" = "24" ];
	then
		FPS="24000/1001"
	elif [ "${FRAME}" = "30" ];
	then
		FPS="30000/1001"
	fi
	let KETINT="${FRAME} + ${FRAME}"
	######

	for i in `seq 1 ${NUM}`
	do

		#Set target encoding rate
		TAR=`echo "scale=3; ${MIN} + ${INT} * (${i} - 1)" | bc`
		BUFSIZE=`expr ${TAR} \* 2`

		#Set output file name
		OUT=${SRC}_${i}
	
		echo "Start encoding..."
		echo "Target rate: ${TAR} Mbps"
		
		#Encoding
		ffmpeg -y -vcodec rawvideo -pix_fmt yuv420p -s:v ${RESO} -vsync 0 -r ${FPS} -i ${SRC}.yuv \
			  -s:v ${RESO} -an -c:v ${CODEC} -b:v ${TAR}K -minrate ${TAR}K -maxrate ${TAR}K \
			  -bufsize ${BUFSIZE}M -r ${FPS} out_${OUT}.mp4


		#Encapsulated by DASH
		${PACK}/packager input=out_${OUT}.mp4,stream=video,output=${OUT}.mp4 \
					--profile on-demand \
					--mpd_output ${OUT}.mpd

		if [ ! -e ${SRC}.mpd ];
		then
			cp ${OUT}.mpd ${SRC}.mpd
		else
			flag=`expr ${i} - 1`
			./margeMPD.sh ${SRC}.mpd ${OUT}.mpd
		fi

		#cleaning...
		rm -r out_${OUT}.mp4
		rm ${OUT}.mpd
		mv ${OUT}.mp4 ${CONTENT}/
		#####
		
	done

	./fixMPD.sh ${SRC}.mpd
	mv ${SRC}.mpd ${CONTENT}/

fi
