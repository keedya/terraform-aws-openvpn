provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
  version = "~> 1.60"
}

terraform {
  required_version = "< 0.12.0"
}

provider "tls" {
  version = "~> 1.2"
}

module "openvpn" {
  source = "./modules/openvpn"
  ami                      = "${var.ami_id}"
  instance_type            = "${var.instance_type}"
  vpc_id                   = "${var.vpc_id}"
  vpc_cidr                 = "${var.vpc_cidr}"
  public_subnet_id        = "${var.public_subnet_id}"
  openvpn_admin_user       = "${var.admin_user}"
  openvpn_admin_pw         = "${var.admin_pwd}"
  keyname                  = "${var.keyname}"
}

