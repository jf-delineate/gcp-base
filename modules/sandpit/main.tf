resource "google_folder" "this" {
  display_name = "sandpit"
  parent       = data.google_organization.this.name
}