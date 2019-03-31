terraform {
  backend "gcs" {
    bucket = "joes-project-remote-state"
    prefix = "terraform"
    project = "joes-project"
    credentials = "/Users/jbeadl01/gcp_terraformjoes-project-sa.json"
  }
}
