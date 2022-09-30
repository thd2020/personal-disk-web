#!/bin/bash

set -e

cd /zwz-disk/
nohup npm run dev >/dev/null 2>&1 &
echo $! > /var/run/disk.pid
echo "Starting disk."

sleep 180s

cd /zwz-disk-manage/
nohup npm run dev >/dev/nul 2>&1 &
echo $! > /var/run/diskManage.pid
echo "Starting disk manage."

exec "$@"

/bin/bash