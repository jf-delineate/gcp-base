resource "google_service_account" "terraform" {
  account_id   = "terraform"
  display_name = "terraform"
  description  = "services account for terraform provisioning"
  project      = google_project.this.project_id
}

resource "google_service_account" "registry" {
  account_id   = "registry"
  display_name = "registry"
  description  = "services account for client artifact registry access"
  project      = google_project.this.project_id
}

# TODO: assign access to the client level artifact registry
