provider "google" {
  region  = var.gcp_region
  zone    = "${var.gcp_region}-c"
  project = var.gcp_project_id
}

provider "google-beta" {
  region  = var.gcp_region
  zone    = "${var.gcp_region}-c"
  project = var.gcp_project_id
}