output "name" {
  value = google_folder.this.id
}

output "iso" {
  value = lower(local.iso)
}