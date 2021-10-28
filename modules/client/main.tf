resource "google_folder" "this" {
  display_name = local.name
  parent       = var.parent
}

resource "random_id" "this" {
  byte_length = 4
  prefix      = local.name
}

resource "google_project" "this" {
  name            = local.name
  project_id      = random_id.this.hex
  folder_id       = google_folder.this.name
  billing_account = var.billing_id
  # disabled in policies also
  auto_create_network = false
}

# TODO: Once Artifact Registry comes out of beta it should be added to this project
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository
