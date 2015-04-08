#!/bin/bash

DATE=`date +%F-%T`
LOG_FILE="/tmp/download.sh-log"

. /opt/env_tools/env_path.sh

HIV100_FILE_ID="0ByYIdZcmx_I8SW1IajRPbkVZd1k"
HIV100_MD5_FILE_ID="0ByYIdZcmx_I8TUlZLXUyckloazg"
HIV100_FILE_NAME="arm-hisiv100-linux-nptl"

HIV200_FILE_ID="0ByYIdZcmx_I8VC1ORlZIcUJCQlU"
HIV200_MD5_FILE_ID="0ByYIdZcmx_I8S0tLdFFoQXVRd0U"
HIV200_FILE_NAME="arm-hisiv200-linux"

GM8287_FILE_ID="0ByYIdZcmx_I8bHJWQnlfZ0VHaG8"
GM8287_MD5_FILE_ID="0ByYIdZcmx_I8WFVGWEpXLVJMMGM"
GM8287_FILE_NAME="toolchain_gnueabi-4.4.0_ARMv5TE"

CMAKE_FILE_ID="0ByYIdZcmx_I8T3RvMHU3UmJvNEU"
CMAKE_MD5_FILE_ID="0ByYIdZcmx_I8eGx5bl9jNkZnN00"
CMAKE_FILE_NAME="cmake-2.8.10.2-Linux-i386"
ERRMSG_EXIT="0"

env_log(){
	echo "$DATE [$1]:$2" >> $LOG_FILE
}

err_log(){
	echo "[Error] $DATE [$1]:$2" >> $LOG_FILE
	echo "[Error]: $DATE [$1]:$2"
	ERRMSG_EXIT="1"
}

usage(){
	echo "donwload.sh [ hiv100 | hiv200 | gm8287 | cmake] "
	echo "donwload path: $CPKG_DL_DIR"
	exit
}

chk_md5_sum(){
	local file_name="$1"

	env_log "chk_md5_sum" "$1"

	cd $CPKG_DL_DIR

	if [ "${file_name:0:5}" == "cmake" ]; then
		sed 's/.tar.gz/.tgz/' $file_name.tgz.md5sum > ./md5_file_tmp
		chk=`md5sum -c ./md5_file_tmp 2> /dev/null  | grep OK`
	else
		chk=`md5sum -c $file_name.tgz.md5sum 2> /dev/null  | grep OK`
	fi
	if [ "$chk" == "" ]; then
		echo "md5sum fail $CPKG_ST_TOOLCHAIN_NAME.tgz "
		err_log "chk_md5_sum" "md5sum fail $CPKG_ST_TOOLCHAIN_NAME.tgz"
	else
		echo "md5sum check: OK $CPKG_ST_TOOLCHAIN_NAME.tgz"
		env_log "chk_md5_sum" "md5sum check: OK $CPKG_ST_TOOLCHAIN_NAME.tgz"
	fi
}

wget_tool(){
	local file_id="$1"
	local md5_file_id="$2"
	local file_name="$3"

	env_log "wget_tool" "$1,$2,$3"
	[ -f $CPKG_DL_DIR/$file_name.tgz ] && {
		env_log "wget_tool" "file exist,return"
		return
	}

	echo "wget --no-check-certificate https://googledrive.com/host/$file_id -O $CPKG_DL_DIR/$file_name.tgz"
	env_log "wget_tool" "wget --no-check-certificate https://googledrive.com/host/$file_id -O $CPKG_DL_DIR/$file_name.tgz"
	wget --no-check-certificate https://googledrive.com/host/$file_id -O $CPKG_DL_DIR/$file_name.tgz
	[ ! -f $CPKG_DL_DIR/$file_name.tgz ] &&{
		echo "download file($file_name.tgz) fail"
		err_log "wget_tool" "download file($file_name.tgz) fail"
		return
	}

	echo "wget --no-check-certificate https://googledrive.com/host/$md5_file_id -O $CPKG_DL_DIR/$file_name.tgz.md5sum"
	env_log "wget_tool" "wget --no-check-certificate https://googledrive.com/host/$md5_file_id -O $CPKG_DL_DIR/$file_name.tgz.md5sum"
	wget --no-check-certificate https://googledrive.com/host/$md5_file_id -O $CPKG_DL_DIR/$file_name.tgz.md5sum
	[ ! -f $CPKG_DL_DIR/$file_name.tgz.md5sum ] &&{
		echo "download file($file_name.tgz.md5sum) fail"
		err_log "wget_tool" "download file($file_name.tgz.md5sum) fail"
		return
	}
}

main(){
	local cmd="$1"
	local file_id=""
	local file_md5_id=""
	local file_name=""

	case "$1" in
		"hiv100")
			file_id="$HIV100_FILE_ID"
			file_md5_id="$HIV100_MD5_FILE_ID"
			file_name="$HIV100_FILE_NAME"
		;;
		"hiv200")
			file_id="$HIV200_FILE_ID"
			file_md5_id="$HIV200_MD5_FILE_ID"
			file_name="$HIV200_FILE_NAME"
		;;
		"gm8287")
			file_id="$GM8287_FILE_ID"
			file_md5_id="$GM8287_MD5_FILE_ID"
			file_name="$GM8287_FILE_NAME"
		;;
		"cmake")
			file_id="$CMAKE_FILE_ID"
			file_md5_id="$CMAKE_MD5_FILE_ID"
			file_name="$CMAKE_FILE_NAME"
		;;
		*)
			usage
		;;
	esac

	[ -f $CPKG_STAGE_DIR/$file_name ] && {
		echo "main" "folder exist $CPKG_STAGE_DIR/$file_name,,return"
		return
	}

	[ ! -f $CPKG_DL_DIR/$file_name.tgz ] && {
		env_log "main" "wget_tool $file_id $file_md5_id $file_name"
		wget_tool "$file_id" "$file_md5_id" "$file_name"
	}

	if [ ! -f $CPKG_DL_DIR/$file_name.tgz ] || [ "$ERRMSG_EXIT" == "1" ]; then
		echo "$0,$1 run fail..please check log file($LOG_FILE)"
		return
	fi

	chk_md5_sum "$file_name"

	[ "$ERRMSG_EXIT" == "1" ] && return
	echo "tar -zxvf $CPKG_DL_DIR/$file_name.tgz -C $CPKG_STAGE_DIR"
	tar -zxvf $CPKG_DL_DIR/$file_name.tgz -C $CPKG_STAGE_DIR
}

env_log "main" "$0,$1,$2"
main "$1"

if [ "$ERRMSG_EXIT" == "0" ]; then
	echo "$0,$1 success"
else
	echo "$0,$1 fail"
fi
