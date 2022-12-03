#!/bin/sh

COMMAND=$@

current_time=$(date "+%Y.%m.%d-%H.%M.%S")

name=${NAME}

fileName=$COMMAND-$NAME-$current_time

if [[ -z "${DISABLE_AZURE}" ]]; then
  /root/tools/sysbench/sysbench.sh $COMMAND > $fileName.txt
  /root/tools/sysbench/azure.sh "$STG_ACCOUNT" "$SAS_TOKEN" $fileName.txt $SHARE_NAME
else
  /root/tools/sysbench/sysbench.sh $COMMAND
fi