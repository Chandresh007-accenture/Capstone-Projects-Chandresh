
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.webserver_vpc.id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet.id
}

output "security_group_id" {
  description = "ID of the web server security group"
  value       = aws_security_group.webserver_sg.id
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.webserver.id
}

output "public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.webserver.public_ip
}

output "website_url" {
  description = "URL of the deployed website"
  value       = "http://${aws_instance.webserver.public_ip}"
}

