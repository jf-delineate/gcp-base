resource "google_folder" "this" {
  display_name = local.name
  parent       = var.parent
}
