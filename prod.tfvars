cidr           = "172.0.0.0/16"
#ami-id         = data.aws_ami.amazon_linux_ami.id
instance-type  = "t2.micro"
sub-pub-cidr=["172.0.1.0/24","172.0.2.0/24"]
sub-priv-cidr=["172.0.3.0/24","172.0.4.0/24"]
region         = "eu-central-1"
azs56=["eu-central-1a","eu-central-1b","eu-central-1c"]



