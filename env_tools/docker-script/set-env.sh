#!/bin/bash

. functions.sh

ck=$(check_cross_env)

[ "$ck" == "IS_NG" ] && {
	echo "check cross compile envrinment fail"
	exit 1
}

DL_PATH="$CROSS_DL_DIR"
STAGE_PATH="$CROSS_ST_DIR"
[ ! -d $DL_PATH ] && mkdir -p $DL_PATH
[ ! -d $STAGE_PATH ] && mkdir -p $STAGE_PATH

HISIV200_TOOLCHAIN_ID="0ByYIdZcmx_I8VC1ORlZIcUJCQlU"
HISIV200_TOOLCHAIN_MD5_ID="0ByYIdZcmx_I8S0tLdFFoQXVRd0U"
HISIV200_TOOLCHAIN_NAME="arm-hisiv200-linux"

if [ ! -f $DL_PATH/$HISIV200_TOOLCHAIN_NAME.tgz ] && [ -f /opt/data/dl/$HISIV200_TOOLCHAIN_NAME.tgz ]; then
	cp -f /opt/data/dl/$HISIV200_TOOLCHAIN_NAME.tgz $DL_PATH
fi

download_tgz_and_extract "$DL_PATH" "$STAGE_PATH" "$HISIV200_TOOLCHAIN_NAME" "$HISIV200_TOOLCHAIN_ID" "$HISIV200_TOOLCHAIN_MD5_ID"

[ "$OK_STATUS" == "1" ] && {
	echo "download file error"
	exit 1
}

echo "success download and extract file $HISIV200_TOOLCHAIN_NAME -> $STAGE_PATH"
