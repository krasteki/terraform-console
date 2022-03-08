# Input variables

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "bucket_prefix" {
  description = "Prefix for bucket name."
  type        = string
  default     = "hashilearn-"
}
