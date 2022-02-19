############################################################################
# IAM User
############################################################################
# IAM User
resource "aws_iam_user" "cloud9_user" {
  name = "cloud9-user"
  path = "/"
}

# IAM User Inline Policy
resource "aws_iam_user_policy" "cloud9_user_policy" {
  name = "cloud9-user-policy"
  user = aws_iam_user.cloud9_user.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

# IAM User Profile
resource "aws_iam_user_login_profile" "cloud9_user_profile" {
  user                    = aws_iam_user.cloud9_user.name
  password_reset_required = true
}

output "coud9_user_password" {
  value = aws_iam_user_login_profile.cloud9_user_profile.password
}
