# Reference: https://www.terraform.io/docs/providers/google/r/cloudbuild_trigger.html
resource "google_cloudbuild_trigger" "deploy-eg-trigger" {
  provider = "google-beta"

  filename = var.filename
  project = var.project
  trigger_template {
    branch_name = var.branch_name
  }

  github {
    owner = var.owner_name
    name = var.repo_name
    push {
      branch = var.branch_regex
    }
  }


}
