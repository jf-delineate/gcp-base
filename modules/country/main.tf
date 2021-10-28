resource "google_folder" "this" {
  display_name = local.iso
  parent       = var.parent
}
