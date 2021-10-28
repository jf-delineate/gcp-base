resource "random_id" "this" {
  byte_length = 4
  prefix      = local.name
}

resource "google_project" "this" {
  name            = local.name
  project_id      = random_id.this.hex
  folder_id       = var.parent
  billing_account = var.billing_id
  # disabled in policies also
  auto_create_network = false
}

resource "google_compute_project_metadata" "this" {
  metadata = {
    enable-oslogin = "TRUE"
  }
  project = google_project.this.project_id
}

# TODO: assign users to groups

// resource "googleworkspace_group" "users" {
//   email = "gcp-${local.name}-users@${var.domain}"
// }

// resource "googleworkspace_group" "admins" {
//   email = "gcp-${local.name}-admins@${var.domain}"
// }

// resource "googleworkspace_group" "sa" {
//   email = "gcp-${local.name}-sa@${var.domain}"
// }
