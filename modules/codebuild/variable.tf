variable "project_name" {
  description = "Project name"
  type        = string
}
variable "codebuild_role_arn" {
  description = "IAM Role ARN for CodeBuild"
  type        = string
}
variable "s3_bucket" {
  description = "S3 bucket for build artifacts"
  type        = string
}
