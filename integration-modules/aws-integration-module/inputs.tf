variable "external_id" {
  type        = string
  description = "This is the manual entered ExternalID within the appNovi AWS configuration"
}

variable "appNovi_arn" {
  type = string
  description = "appNovi AWS root ARN"
  value = "arn:aws:iam::240613463594:root"
}