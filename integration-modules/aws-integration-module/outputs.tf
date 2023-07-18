locals {
  credentials_content = <<EOF
[default]
aws_access_key_id     = ${data.aws_iam_access_key.new_user_access_key.access_key}
aws_secret_access_key = ${data.aws_iam_access_key.new_user_access_key.secret_access_key}
EOF
}

resource "local_file" "credentials_file" {
  sensitive_content = local.credentials_content
  filename = "credentials.txt"
}