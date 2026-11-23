#!/bin/bash

BUCKET="chandresh-project19-scheduled-backup-590507089733-20261123"
LOG_FILE="$HOME/Capstone-Projects-Chandresh/Project-19-Scheduled-S3-Backup/logs/app.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found."
    exit 1
fi

aws s3 cp "$LOG_FILE" "s3://$BUCKET/backups/app-log-$TIMESTAMP.log"

if [ $? -eq 0 ]; then
    echo "Backup uploaded successfully."
else
    echo "Backup failed."
    exit 1
fi
