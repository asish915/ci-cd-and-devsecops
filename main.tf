module "s3" {
  source       = "./modules/s3"
  project_name = var.project_name
  bucket_name  = var.bucket_name
}

module "iam" {
  source                 = "./modules/iam"
  project_name           = var.project_name
  github_connection_name = "git-connection"
  kms_key_arn            = var.kms_key_arn

}

module "codebuild" {
  source             = "./modules/codebuild"
  project_name       = var.project_name
  s3_bucket          = var.bucket_name
  codebuild_role_arn = module.iam.codebuild_role_arn
}

module "codepipeline" {
  source                 = "./modules/codepipeline"
  project_name           = var.project_name
  codestar_arn           = module.iam.github_codestar_connection_arn
  codebuild_project_name = module.codebuild.codebuild_project_name
  artifact_bucket        = var.bucket_name
  pipeline_role_arn      = module.iam.codepipeline_role_arn
}

module "ec2" {
  source                = "./modules/ec2"
  instance_profile_name = module.iam.ec2_instance_profile_name
  instance_name_tag     = "project-ec2-instance"
  frontend_s3_bucket    = var.bucket_name
}

