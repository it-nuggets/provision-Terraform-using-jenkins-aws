module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "It-nuggetse-ec2"

  instance_type          = "t2.micro"
  key_name               = "access_ec2"
  monitoring             = true
  vpc_security_group_ids = ["sg-0b92e77989e00eade"]
  subnet_id              = "subnet-0015265af23c32538"
  iam_role_name          = "Terraform-aws-s3-project"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}