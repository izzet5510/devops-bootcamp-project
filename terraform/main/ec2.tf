# Server 1 - Web Server (Public Subnet)
resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu_2404.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  private_ip             = "10.0.0.5"
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name               = aws_key_pair.devops_key.key_name

  # Ensure it can receive a public IP (we will attach Elastic IP too)
  associate_public_ip_address = true

  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-web-server"
  }
}

# Elastic IP for Web Server (must be allocated and associated)
resource "aws_eip" "web_eip" {
  domain = "vpc"

  tags = {
    Name = "devops-web-eip"
  }
}

resource "aws_eip_association" "web_eip_assoc" {
  instance_id   = aws_instance.web.id
  allocation_id = aws_eip.web_eip.id
}

# Server 2 - Ansible Controller (Private Subnet, NO public IP)
resource "aws_instance" "ansible" {
  ami                    = data.aws_ami.ubuntu_2404.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private_subnet.id
  private_ip             = "10.0.0.135"
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = aws_key_pair.devops_key.key_name

  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-ansible-controller"
  }
}

# Server 3 - Monitoring Server (Private Subnet, NO public IP)
resource "aws_instance" "monitoring" {
  ami                    = data.aws_ami.ubuntu_2404.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private_subnet.id
  private_ip             = "10.0.0.136"
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = aws_key_pair.devops_key.key_name

  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name

  tags = {
    Name = "devops-monitoring-server"
  }
}
