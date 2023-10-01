resource "aws_instance" "application_instance" {
  ami           = data.aws_ami.amazon_linux_ami.id 
  instance_type = var.instance-type     
  key_name      = aws_key_pair.tf-keypair.id   

  subnet_id     = module.mynetwork.priv-subnets[0].id
  vpc_security_group_ids = [aws_security_group.private-sg.id]

  tags = {
    Name = "application-instance"
  }
}



