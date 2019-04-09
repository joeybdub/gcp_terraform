data "google_iam_policy" "admin" {
  binding {
    role = "roles/iam.serviceAccountUser"

    members = [
      "user:josephbeadle@gmail.com",
    ]
  }
}
resource "google_service_account" "service-accounts" {
  account_id   = "joes-project-sa"
}

resource "google_project_iam_custom_role" "joes_custom_role" {
  role_id     = "service_accounts"
  title       = "joes-project-sa"
  description = "service-account-for-project"
  permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
}
