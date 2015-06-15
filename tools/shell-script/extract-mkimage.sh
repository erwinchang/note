#!/bin/bash

#  mkimage extract tools
#  2015/06/15
#
#

tmp_file="/tmp/mkimage_log.1"
HEAD_SIZE=64
HEAD_OFFSET_SIZE=0
IMG_NUM=0
IMG_TMP="img.tmp"
IMG0_SIZE="0"
IMG1_SIZE="0"
IMG2_SIZE="0"
IMG3_SIZE="0"
IMG4_SIZE="0"
IMG5_SIZE="0"
IMG6_SIZE="0"
IMG7_SIZE="0"
IMG0_SKIP_SIZE="0"
IMG1_SKIP_SIZE="0"
IMG2_SKIP_SIZE="0"
IMG3_SKIP_SIZE="0"
IMG4_SKIP_SIZE="0"
IMG5_SKIP_SIZE="0"
IMG6_SKIP_SIZE="0"
IMG7_SKIP_SIZE="0"

Usage(){
	echo "Usage: $0 xxx.bin"
}


extract_head(){
	local file_name=$1
	local cnt=0
	local len=0
	local num=0	
	local sum=0

	mkimage -l $file_name | grep Image | grep MB | awk '{ print $2 " " $3}' | sed 's/://g' > $tmp_file

	echo "===="
	mkimage -l $1
	echo "===="

	while read cnt len; do
	#	echo "$cnt,$len"
		if [ "$cnt" -lt 8 ]; then
			eval "IMG${cnt}_SIZE=$len"
			eval "IMG${cnt}_SKIP_SIZE=$sum"
			let "num=$num+1"
			let "sum=$sum+$len"
		fi
	done < $tmp_file

	let "IMG_NUM=$num"
	let "num=$num+1"
	let "HEAD_OFFSET_SIZE=$HEAD_SIZE+$num*4"
	echo "IMG_NUM:$IMG_NUM,HEAD_OFFSET_SIZE:$HEAD_OFFSET_SIZE"
	echo "$IMG0_SIZE,$IMG1_SIZE,$IMG2_SIZE,$IMG3_SIZE,$IMG4_SIZE,$IMG5_SIZE,$IMG6_SIZE,$IMG7_SIZE"
#	echo "$IMG0_SKIP_SIZE,$IMG1_SKIP_SIZE,$IMG2_SKIP_SIZE,$IMG3_SKIP_SIZE,$IMG4_SKIP_SIZE,$IMG5_SKIP_SIZE,$IMG6_SKIP_SIZE,$IMG7_SKIP_SIZE"

	cnt=0
	while [ $cnt -lt $IMG_NUM ]; do
		eval "len=\$IMG${cnt}_SKIP_SIZE"
		let "sum=$len+$HEAD_OFFSET_SIZE"
		eval "IMG${cnt}_SKIP_SIZE=$sum"
		let "cnt=$cnt+1"
	done	
	echo "$IMG0_SKIP_SIZE,$IMG1_SKIP_SIZE,$IMG2_SKIP_SIZE,$IMG3_SKIP_SIZE,$IMG4_SKIP_SIZE,$IMG5_SKIP_SIZE,$IMG6_SKIP_SIZE,$IMG7_SKIP_SIZE"
}

extract_body(){
	local file_name="$1"
	local img_name=""
	local img_len=""
	local cnt="0"
	local skip_len="0"

	while [ $cnt -lt $IMG_NUM ]; do
		eval "skip_len=\$IMG${cnt}_SKIP_SIZE"
		eval "img_len=\$IMG${cnt}_SIZE"
		eval "img_name=image_${cnt}"

		echo ""
		echo "$cnt,$img_name,$img_len"
		echo "dd if=$file_name of=$IMG_TMP bs=$skip_len skip=1"
		dd if=$file_name of=$IMG_TMP bs=$skip_len skip=1

		echo "dd if=$IMG_TMP of=$img_name bs=$img_len count=1"
		dd if=$IMG_TMP of=$img_name bs=$img_len count=1

		let "cnt=cnt+1"
	done	
}

if [ "$1" == "" ] || [ ! -e $1 ]; then
	Usage
	exit
fi

extract_head "$1"
extract_body "$1"

#echo "dd if=$MKIMAGE_FILE of=$IMGALL_BIN bs=$IMG3FILE_IMG0HEAD skip=1"
#dd if=$MKIMAGE_FILE of=$IMGALL_BIN bs=$IMG3FILE_IMG0HEAD skip=1
