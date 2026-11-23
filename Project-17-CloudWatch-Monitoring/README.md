# Project 17 – Log Forwarding to CloudWatch

## Objective
Configure the Amazon CloudWatch Agent to collect Ubuntu system logs and send them to Amazon CloudWatch Logs.

## Implementation Steps

1. Prepare an Ubuntu EC2 instance with the required permissions to publish logs to CloudWatch.
2. Install the Amazon CloudWatch Agent.
3. Copy `cw-agent-config.json` to the CloudWatch Agent configuration directory.
4. Start the CloudWatch Agent using the configuration file.
5. Open the CloudWatch Logs service in AWS.
6. Check the configured log group and verify that system logs are being received.


## Verification
Verify that the CloudWatch Agent is running and that log events appear in the configured CloudWatch log group.

**Author**
- Chandresh Kumar
