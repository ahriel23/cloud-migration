resource "aws_instance" "code1" {
  ami           = "ami-094ac896bf7088167"
  instance_type = "t2.micro"
  count = 2
  key_name      = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Name = "ec2-instance"
    Env  = "dev"
  }
}
