module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "It-nuggetse-ec2"

  instance_type          = "t2.micro"
  key_name               = "access_ec2"
  monitoring             = true
  vpc_security_group_ids = ["sg-0bab32f98aaed0262"]
  subnet_id              = "subnet-0df29ef02dc7b6ea1"
  iam_role_name          = "Terraform-aws-s3-project"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}