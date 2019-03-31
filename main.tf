variable "project_name" {}

provider "google" {
  project                     = "${var.project_name}"
  region                      = "${var.gcp_region}"
  zone                        = "${var.gcp_region}-${var.gcp_zone}"
  credentials                 = "${file("/Users/jbeadl01/gcp_terraformjoes-project-sa.json")}"
}

module "project" {
  source                      = "module/projects"
  project_name                = "${var.project_name}"
}
