variable "project_name" {
  description = "The name of the project"
  type        = string
}
variable "github_connection_name" {
  description = "Name of GitHub CodeStar connection"
  type        = string
}
variable "kms_key_arn" {
  description = "KMS Key ARN"
  type        = string
}
