variable "user_name" {
  description = "appNovi Integration IAM Username"
  type        = string
  default     = "appNoviIntegrationUser"
}

variable "role_name" {
  description = "appNovi IAM role"
  type        = string
  default     = "appNoviIAMRole"
}

variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-west-2"
}
