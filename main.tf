module "project" {
  source                      = "module/projects"
  project_name                = "${var.project_name}"
}
module "service_account" {
  source                      = "module/service_account"
  project_name                = "${module.project.project_name}"
}
