############################################################################
# Cloud9
############################################################################
# 参考：https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloud9_environment_ec2#type
# Cloud9
resource "aws_cloud9_environment_ec2" "example" {
  description   = "Example env"
  instance_type = "t2.micro"
  name          = "example-env"
  owner_arn     = aws_iam_user.cloud9_user.arn
  subnet_id     = aws_subnet.subet.id
}