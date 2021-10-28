output "name" {
  value = google_folder.this.id
}

output "iso" {
  value = lower(local.iso)
}

output "billing_id" {
  value = data.google_billing_account.this.id
}
