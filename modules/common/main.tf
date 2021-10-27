resource "google_folder" "this" {
  display_name = "common"
  parent       = data.google_organization.this.name
}
