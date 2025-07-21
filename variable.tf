variable "project_name" {
  description = "Name of the Project name"
  type        = string
  default     = "project-ci-cd"
}
variable "bucket_name" {
  description = "S3 bucket name for Vite app artifacts"
  type        = string
  default     = "project-s3-bucket256"
}
variable "kms_key_arn" {
  description = "KMS Key ARN used for decryption"
  type        = string
  default     = "arn:aws:kms:ap-south-1:068760013706:key/0736d14e-d38f-41de-a71e-18313d9ee4b7"
}
