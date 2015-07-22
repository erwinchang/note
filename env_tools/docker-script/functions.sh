#!/bin/bash

IS_OK="SUCESS"
IS_NG="ERROR"
OK_STATUS="1"

check_file(){
	local file_path="$1"
	local file_name="$2"
	local md5_file="$2.md5sum"

	if [ -f $file_path/$file_name ] && [ -f $file_path/$md5_file ]; then
		cd $file_path 
		chk=`md5sum -c $md5_file 2> /dev/null  | grep OK`
		if [ "$chk" == "" ]; then
			echo "$IS_NG"
		else
			echo "$IS_OK"
		fi
	else
		echo "$IS_NG"
	fi	
}

#ck=$(download_file "$HISIV200_TOOLCHAIN_ID" "$HISIV200_TOOLCHAIN_MD5_ID" "$DL_PATH" "$HISIV200_TOOLCHAIN_NAME.tgz")
download_file(){
	local file_id="$1"
	local file_ck_id="$2"
	local file_path="$3"
	local file_name="$4"
	local chk="0"

	[ ! -d $file_path ] && mkdir -p $file_path
	[ ! -f $file_patn/$file_name ] && wget --no-check-certificate https://googledrive.com/host/$file_id -O $file_path/$file_name
	[ ! -f $file_path/$file_name.md5sum ] && wget --no-check-certificate https://googledrive.com/host/$file_ck_id -O $file_path/$file_name.md5sum
	chk=$(check_file "file_path" "file_name")
	echo "$chk"
}

#extract_file "$DL_PATH/$HISIV200_TOOLCHAIN_NAME.tgz" "$STAGE_PATH"
extract_file(){
	local file_path="$1"
	local extract_dir="$2"

	[ ! -d $extract_dir ] && mkdir -p $extract_dir

	tar -zxvf $file_path -C $extract_dir
}

check_cross_env(){
	local ck="0"
	[ "$CROSS_BUILD_DIR" == "" ] && ck="1"
	[ "$CROSS_DL_DIR" == "" ] && ck="1"
	[ "$CROSS_ST_DIR" == "" ] && ck="1"

	[ "$ck" == "1" ] && {
		echo "$IS_NG"
		return
	}
	echo "$IS_OK"
}

#download_tgz_and_extract "$CROSS_DL_DIR" "$CROSS_ST_DIR" "$HISI_KERNEL_FNAME" "$HISI_KERNEL_ID" "$HISI_KERNEL_MD5_ID"
download_tgz_and_extract(){
	local dl_path="$1"
	local ex_path="$2"
	local file_name="$3"
	local file_id="$4"
	local file_md5_id="$5"
	local ck="0"

	OK_STATUS="1"
	[ "$dl_path" == "" ] && return
	[ "$ex_path" == "" ] && return
	[ "$file_name" == "" ] && return
	[ "$file_id" == "" ] && return
	[ "$file_md5_id" == "" ] && return	

	if [ ! -f $dl_path/$file_name.tgz ]; then
		ck=$(download_file "$file_id" "$file_md5_id" "$dl_path" "$file_name.tgz")

		echo ""
		[ "ck" == "$IS_NG" ] && {
			echo "download and check md5sumb fail (file-name: $file_name )"
			echo ""
			mv $dl_path/$file_name.tgz $dl_path/$file_name.tgz.error
			mv $dl_path/$file_name.tgz.md5sum $dl_path/$file_name.tgz.md5sum.error
			return
		}
		echo "download and check md5sum sucdess (file-name: $file_name )"
		echo ""
	fi

	if [ ! -d  $ex_path/$file_name ]; then
		extract_file "$dl_path/$file_name.tgz" "$ex_path"
	fi
	OK_STATUS="0"
}