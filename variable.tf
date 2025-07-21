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
  default     = "arn:aws:kms:ap-south-1:068760013706:key/90df774d-5ed2-4ca9-a774-dce4dc4b6fc2" # change it
}
