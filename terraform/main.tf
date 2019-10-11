# Reference: https://www.terraform.io/docs/providers/google/r/cloudbuild_trigger.html
resource "google_cloudbuild_trigger" "deploy-eg-trigger" {
  provider = "google-beta"
  trigger_template {
    branch_name = "master"
  }

  github {
    owner = "kylie-sre"
    name = "cloud-run-test"
    push {
      branch = ".*"
    }
  }

  filename = "cloudbuild.yaml"
}
