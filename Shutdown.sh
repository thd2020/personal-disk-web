#!/bin/bash

PID1=$(cat /var/run/disk.pid)
kill -9 $PID1
echo "Stopped disk."

PID2=$(cat /var/run/diskManage.pid)
kill -9 $PID2
echo "Stopped disk manage."