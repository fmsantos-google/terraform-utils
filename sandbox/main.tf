resource "random_string" "name" {
  length  = 5
  special = false
  upper   = false
}

resource "google_folder" "sandbox_folder" {
  display_name = "sandbox"
  parent       = "organizations/${var.gcp_organization_id}"
}

resource "google_folder_organization_policy" "folder_org_policies" {
  folder     = google_folder.sandbox_folder.id
  for_each   = toset(local.org_policies_override)
  constraint = each.key
  restore_policy {
    default = true
  }
}

resource "google_project" "sandbox_project" {
  depends_on      = [google_folder_organization_policy.folder_org_policies]
  billing_account = var.gcp_billing_account_id
  name            = "${random_string.name.result}-project"
  project_id      = "${random_string.name.result}-project"
  folder_id       = google_folder.sandbox_folder.id
}

resource "google_project_service" "project" {
  for_each                   = toset(local.required_apis)
  project                    = google_project.sandbox_project.id
  service                    = "${each.key}.googleapis.com"
  disable_dependent_services = true
}

