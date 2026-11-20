
variable "project_name" {
  description = "Project resource naming prefix"
  type        = string
  default     = "cloudwatch-monitoring-Chandresh"
}

variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "vpc_id" {
  description = "Existing VPC ID"
  type        = string
  default     = "vpc-03389c41f719f68ac"
}

variable "subnet_id" {
  description = "Existing subnet ID"
  type        = string
  default     = "subnet-02a246541c0a65ad4"
}

variable "cpu_threshold" {
  description = "CPU utilization alarm threshold"
  type        = number
  default     = 70
}

