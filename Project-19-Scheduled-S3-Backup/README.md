# Project 19 – Scheduled S3 Backup

## Objective
Automate log backups to Amazon S3 using a Linux cron job.

## AWS Configuration
- AWS Region: ap-south-1 (Mumbai)
- S3 Bucket: chandresh-project19-scheduled-backup-590507089733-20261123
- S3 Backup Location: s3://chandresh-project19-scheduled-backup-590507089733-20261123/backups/

## Project Tasks

### 1. Create a Log File
Created a sample application log at:
`logs/app.log`

### 2. Create the Backup Script
The `backup.sh` script uploads the log file to S3 with a timestamped filename.

### 3. Schedule Automatic Backups
Configured a Linux cron job to run every five minutes:

`*/5 * * * *`

### 4. Verify the Backup
Verified that the cron service was active and that automatic uploads succeeded.

Listed the S3 backup files using:

`aws s3 ls s3://chandresh-project19-scheduled-backup-590507089733-20261123/backups/`

## Result
Successfully tested manual and scheduled log uploads to Amazon S3.

## Tools Used
- Ubuntu Linux
- AWS CLI
- Amazon S3
- Cron

## Author
Chandresh Kumar
