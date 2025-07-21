resource "aws_codestarconnections_connection" "github_connection" {
  name          = "project-git-connection"
  provider_type = "GitHub"
}
