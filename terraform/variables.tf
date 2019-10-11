variable "project" {}

variable "owner_name" {}

variable "repo_name" {}

variable "filename" {
  default = "cloudbuild.yaml"
}

variable "branch_name" {
  default = "master"
}

variable "branch_regex" {
  default = ".*"
}
