resource "google_folder" "this" {
  display_name = local.iso
  parent       = var.parent
}

resource "google_cloud_identity_group" "admins" {
  display_name = "${upper(local.iso)} Admins"
  parent       = "customers/${data.google_organization.this.directory_customer_id}"
  group_key {
    id = "gcp-${local.iso}-admins@${local.domain}"
  }
  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}

resource "google_folder_iam_member" "country_folder_iam" {
  folder = google_folder.this.name
  role   = "roles/viewer"
  member = "group:${google_cloud_identity_group.admins.group_key[0].id}"
}

resource "google_cloud_identity_group" "contacts" {
  display_name = "${upper(local.iso)} Contacts"
  parent       = "customers/${data.google_organization.this.directory_customer_id}"
  group_key {
    id = "gcp-${local.iso}-contacts@${local.domain}"
  }
  labels = {
    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}

resource "google_essential_contacts_contact" "contacts" {
  parent                              = google_folder.this.name
  email                               = google_cloud_identity_group.contacts.group_key[0].id
  language_tag                        = var.language
  notification_category_subscriptions = ["ALL"]
}