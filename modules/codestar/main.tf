resource "aws_codestarconnections_connection" "github_connection" {
  name          = "git-connection"
  provider_type = "GitHub"
}
