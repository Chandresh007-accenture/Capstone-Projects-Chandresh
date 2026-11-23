# Project 17 – CloudWatch Monitoring

## Objective
Configure the Amazon CloudWatch Agent to collect Ubuntu system logs and send them to Amazon CloudWatch Logs.

## Log Collection Configuration
The file `cw-agent-config.json` contains the CloudWatch Agent configuration.

- **Run as user:** root
- **Log file:** `/var/log/syslog`
- **CloudWatch Log Group:** `/project17/chandresh-kumar-logs`
- **Log Stream:** `{hostname}-syslog`

## Implementation Steps

1. Prepare an Ubuntu EC2 instance with the required permissions to publish logs to CloudWatch.
2. Install the Amazon CloudWatch Agent.
3. Copy `cw-agent-config.json` to the CloudWatch Agent configuration directory.
4. Start the CloudWatch Agent using the configuration file.
5. Open the CloudWatch Logs service in AWS.
6. Check the configured log group and verify that system logs are being received.

## Project Files

- `cw-agent-config.json` – CloudWatch Agent log collection configuration.
- `Screenshot/` – Folder for project implementation screenshots.

## Verification
Verify that the CloudWatch Agent is running and that log events appear in the configured CloudWatch log group.

## Note
This repository includes the CloudWatch Agent configuration file. Screenshots and additional implementation evidence can be added to the `Screenshot` folder.
