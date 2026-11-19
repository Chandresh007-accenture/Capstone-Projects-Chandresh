
# Get the latest Ubuntu 24.04 LTS AMI
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Create VPC
resource "aws_vpc" "webserver_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "${var.project_name}-vpc"
    Owner       = "Chandresh Kumar"
    Environment = "Assessment"
  }
}

# Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.webserver_vpc.id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name  = "${var.project_name}-public-subnet"
    Owner = "Chandresh Kumar"
  }
}

# Create Internet Gateway
resource "aws_internet_gateway" "webserver_igw" {
  vpc_id = aws_vpc.webserver_vpc.id

  tags = {
    Name  = "${var.project_name}-igw"
    Owner = "Chandresh Kumar"
  }
}

# Create Public Route Table
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.webserver_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.webserver_igw.id
  }

  tags = {
    Name  = "${var.project_name}-public-rt"
    Owner = "Chandresh Kumar"
  }
}

# Associate Public Route Table with Subnet
resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

# Create Security Group
# Only HTTP port 80 is allowed.
# SSH 22 and RDP 3389 are intentionally not enabled.
resource "aws_security_group" "webserver_sg" {
  name        = "${var.project_name}-sg"
  description = "Allow HTTP and restricted SSH access"
  vpc_id      = aws_vpc.webserver_vpc.id

  ingress {
    description = "HTTP access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name  = "${var.project_name}-sg"
    Owner = "Chandresh Kumar"
  }
}

# Create EC2 Instance
resource "aws_instance" "webserver" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.webserver_sg.id]
  associate_public_ip_address = true

  user_data                   = file("${path.module}/scripts/install_apache.sh")
  user_data_replace_on_change = true

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }

  tags = {
    Name        = "${var.project_name}-ec2"
    Owner       = "Chandresh Kumar"
    Environment = "Assessment"
  }

  lifecycle {
    create_before_destroy = true
  }

}

