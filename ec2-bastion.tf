resource "aws_instance" "bastion_instance" {
  ami           = data.aws_ami.amazon_linux_ami.id
  instance_type = var.instance-type    
  key_name      = aws_key_pair.tf-keypair.id  
  associate_public_ip_address = true
  subnet_id     = module.mynetwork.pub-subnets[0].id
  vpc_security_group_ids = [aws_security_group.public-sg.id]

  provisioner "local-exec" {
    command= "echo ${self.public_ip} "
  }
   /* provisioner "local-exec" {
    command= "ssh -i tf-keypair.pem ec2-user@${self.public_ip}"
    interpreter = ["BashShell", "-Command"]
  }*/
    

  user_data = <<-EOF
                  #!/bin/bash
                  echo "${tls_private_key.mykeypair.private_key_pem}" >/home/ec2-user/private-key.pem
                  chmod 400 private-key.pem
               EOF
  tags = {
    Name = "bastion-instance"
  }
}


# Amazon Linux AMI
data "aws_ami" "amazon_linux_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["amazon"]
}
