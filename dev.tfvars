cidr= "10.0.0.0/16"
#ami-id= data.aws_ami.amazon_linux_ami.id
instance-type="t2.micro"
sub-pub-cidr=["10.0.1.0/24","10.0.2.0/24"]
sub-priv-cidr=["10.0.3.0/24","10.0.4.0/24"]
region="us-east-1"
azs56=["us-east-1a","us-east-1b","us-east-1c","us-east-1d"]

# sub_map=[
# {
# cidr="10.0.1.0/24",
# type="public",
# az="us-east-1a" 
# },

# {
# cidr="10.0.2.0/24",
# type="private",
# az="us-east-1a" 
# }
# ]