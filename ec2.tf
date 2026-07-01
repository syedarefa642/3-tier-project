###############################
# Web Server
###############################

resource "aws_instance" "web_server" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  key_name      = "webserver-key"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  ebs_block_device {

    device_name = "/dev/sda1"
    volume_size = 20

  }

  tags = {

    Name = "Web-Server"

  }

}

###############################
# App Server
###############################

resource "aws_instance" "app_server" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  key_name      = "webserver-key"

  subnet_id = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.app_sg.id
  ]

  ebs_block_device {

    device_name = "/dev/sda1"
    volume_size = 20

  }

  tags = {

    Name = "App-Server"

  }

}

###############################
# Database Server
###############################

resource "aws_instance" "db_server" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  key_name      = "webserver-key"

  subnet_id = aws_subnet.private.id

  vpc_security_group_ids = [
    aws_security_group.db_sg.id
  ]

  ebs_block_device {

    device_name = "/dev/sda1"
    volume_size = 20

  }

  tags = {

    Name = "DB-Server"

  }

}