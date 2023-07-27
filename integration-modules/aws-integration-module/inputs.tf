variable "external_id" {
  type        = string
  description = "This is the manually entered ExternalID within the appNovi AWS configuration"
}

variable "appNovi_arn" {
  type = string
  description = "appNovi AWS root ARN"
  default = "arn:aws:iam::240613463594:root"
}