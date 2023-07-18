resource "aws_iam_user" "new_user" {
  name = var.user_name
}

resource "aws_iam_role" "new_role" {
  name = var.role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_policy" "new_policy" {
  name        = "new_policy"
  description = "Policy for the new IAM user/role"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:DescribeInstances",
        "ec2:DescribeVolumes",
        "elb:DescribeLoadBalancers",
        "autoscaling:DescribeAutoScalingGroups",
        "eks:ListClusters",
        "lambda:ListFunctions",
        "ec2:DescribeVpcs",
        "s3:ListBuckets",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeSubnets",
        "ec2:DescribeTransitGatewayVpcAttachments"
      ],
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = aws_iam_role.new_role.name
  policy_arn = aws_iam_policy.new_policy.arn
}

resource "aws_iam_user_policy_attachment" "attach_user_policy" {
  user       = aws_iam_user.new_user.name
  policy_arn = aws_iam_policy.new_policy.arn
}

data "aws_iam_access_key" "new_user_access_key" {
  user = aws_iam_user.new_user.name
}