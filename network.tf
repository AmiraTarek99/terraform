module "mynetwork"{
    source= "./network"
    cidr=var.cidr
    pub-sub=var.sub-pub-cidr
    priv-sub=var.sub-priv-cidr
    azs=var.azs56
    
}
