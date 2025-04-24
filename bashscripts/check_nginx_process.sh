#!/bin/bash

LOG_FILE="/var/log/nginx_check.log"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# Check if nginx is running
if pgrep nginx > /dev/null
then
    echo "$TIMESTAMP - Nginx is already running." >> $LOG_FILE
else
    echo "$TIMESTAMP - Nginx is NOT running. Starting Nginx..." >> $LOG_FILE
    systemctl start nginx

    # Check if it started successfully
    if [ $? -eq 0 ]; then
        echo "$TIMESTAMP - Nginx started successfully." >> $LOG_FILE
    else
        echo "$TIMESTAMP - Failed to start Nginx!" >> $LOG_FILE
    fi
fi