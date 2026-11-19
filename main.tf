
# Find the Ubuntu 24.04 AMI
data "aws_ssm_parameter" "ubuntu_ami" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

# Create a dedicated security group
resource "aws_security_group" "monitoring_sg" {
  name        = "${var.project_name}-SG"
  description = "Security group for Chandresh CloudWatch monitoring project"
  vpc_id      = var.vpc_id

  # No inbound rules: SSH and RDP are prohibited.
  # Outbound traffic is allowed for required communication.
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name      = "${var.project_name}-SG"
    Project   = var.project_name
    Owner     = "Chandresh"
    ManagedBy = "Terraform"
  }
}

# Create EC2 instance
resource "aws_instance" "monitoring_ec2" {
  ami                         = data.aws_ssm_parameter.ubuntu_ami.value
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.monitoring_sg.id]
  associate_public_ip_address = false
  monitoring                  = false

  credit_specification {
    cpu_credits = "standard"
  }

  metadata_options {
    http_tokens = "required"
  }

  # Generate CPU load automatically without SSH access.
  user_data = <<-EOF
  #!/bin/bash
  set -eu

  for i in $(seq 1 $(nproc)); do
    nohup timeout 600s bash -c 'while true; do :; done' \
      >/dev/null 2>&1 &
  done
EOF

  user_data_replace_on_change = true

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name      = "${var.project_name}-EC2"
    Project   = var.project_name
    Owner     = "Chandresh"
    ManagedBy = "Terraform"
  }
}

# Create CloudWatch CPU utilization alarm
resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name        = "${var.project_name}-CPU-Alarm"
  alarm_description = "Alert when Chandresh EC2 CPU utilization exceeds 70 percent"

  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = var.cpu_threshold

  alarm_actions = []

  dimensions = {
    InstanceId = aws_instance.monitoring_ec2.id
  }

  treat_missing_data = "notBreaching"
}

