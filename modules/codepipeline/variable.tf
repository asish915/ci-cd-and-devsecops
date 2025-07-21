variable "project_name" {
  description = "Project name"
  type        = string
}
variable "codestar_arn" {
  description = "CodeStar Connection ARN"
  type        = string
}
variable "codebuild_project_name" {
  description = "CodeBuild project name"
  type        = string
}
variable "artifact_bucket" {
  description = "S3 bucket for pipeline artifacts"
  type        = string
}
variable "pipeline_role_arn" {
  description = "IAM Role ARN for CodePipeline"
  type        = string
}
