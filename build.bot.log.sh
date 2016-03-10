#!/bin/bash
# Define a timestamp function
timestamp() {
	date +"%Y%m%d%H%M%S"
}

SRC=/home/mpss-modules-3.4.6
build_logs=/mnt/nfs/System/build_logs
filename=$build_logs/mpss-modules-3.4.6-build_bot-$(timestamp).txt

cd $SRC && sh -x $SRC/build.bot.sh \
2>&1 \
| tee -a $filename
