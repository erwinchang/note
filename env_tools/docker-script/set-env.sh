#!/bin/bash

. functions.sh

ck=$(check_cross_env)

[ "$ck" == "IS_NG" ] && {
	echo "check cross compile envrinment fail"
	exit 1
}

DL_PATH="$CROSS_DL_DIR"
STAGE_PATH="$CROSS_ST_DIR"

HISIV200_TOOLCHAIN_ID="0ByYIdZcmx_I8VC1ORlZIcUJCQlU"
HISIV200_TOOLCHAIN_MD5_ID="0ByYIdZcmx_I8S0tLdFFoQXVRd0U"
HISIV200_TOOLCHAIN_NAME="arm-hisiv200-linux"


download_tgz_and_extract "$CROSS_DL_DIR" "$CROSS_ST_DIR" "$HISIV200_TOOLCHAIN_NAME" "$HISIV200_TOOLCHAIN_ID" "$HISIV200_TOOLCHAIN_MD5_ID"

[ "$OK_STATUS" == "1" ] && {
	echo "download file error"
	exit 1
}

echo "success download and extract file $HISIV200_TOOLCHAIN_NAME -> $CROSS_ST_DIR"
