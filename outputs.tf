output "ec2_instance_id" {
  description = "Chandresh monitoring EC2 instance ID"
  value       = aws_instance.monitoring_ec2.id
}

output "ec2_private_ip" {
  description = "Private IP address"
  value       = aws_instance.monitoring_ec2.private_ip
}

output "security_group_id" {
  description = "Project security group ID"
  value       = aws_security_group.monitoring_sg.id
}

output "cloudwatch_alarm_name" {
  description = "CloudWatch CPU alarm name"
  value       = aws_cloudwatch_metric_alarm.cpu_alarm.alarm_name
}
