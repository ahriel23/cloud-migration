variable "region" {
    type = string
    default = "us-east-1"
}

variable "instance_type" {
    default = "t2.micro"
  
}
variable "team" {
    default = "dev"
  
}
variable "keypair" {
    default = "ec2-key"
  
}
variable "vpc_name" {
    default = "DevOps-vpc"
  
}