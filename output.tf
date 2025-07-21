output "codebuild_project_name" {
  description = "CodeBuild project name"
  value       = var.project_name
}
output "codepipeline_name" {
  description = "CodePipeline name"
  value       = module.codepipeline.pipeline_name
}
output "s3_bucket_name" {
  description = "S3 bucket used in pipeline"
  value       = module.s3.bucket_name
}
output "codepipeline_role_arn" {
  description = "Codepipeline role arn"
  value = module.iam.codepipeline_role_arn
}
output "codebuild_role_arn" {
  description = "Codebuild role arn"
  value = module.iam.codebuild_role_arn
}
output "github_connection_name" {
  description = "GitHub CodeStar connection name"
  value       = module.iam.github_connection_name
}
output "github_codestar_connection_arn" {
  description = "CodeStar connection arn"
  value = module.iam.github_codestar_connection_arn
}