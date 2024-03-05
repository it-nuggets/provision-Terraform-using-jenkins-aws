module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "It-nuggetse-ec2"

  instance_type          = "t2.micro"
  key_name               = "access_ec2"
  monitoring             = true
  vpc_security_group_ids = ["subnet-0789d9cf18eeffb5b"]
  subnet_id              = "subnet-0fe5991cb792475d8"
  iam_role_name          = "Terraform-aws-s3-project"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}