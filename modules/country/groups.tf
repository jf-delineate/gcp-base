resource "googleworkspace_group" "admins" {
  email = "gcp-${local.iso}-admins@${var.domain}"
}

resource "googleworkspace_group_members" "admins" {
  for_each = toset(var.admins)

  group_id = googleworkspace_group.admins.id
  members {
    email = each.key
    role  = "MEMBER"
  }
}

resource "google_folder_iam_member" "this" {
  folder = google_folder.this.name
  role   = "roles/viewer"
  member = "group:${googleworkspace_group.admins.email}"
}

resource "googleworkspace_group" "contacts" {
  email = "gcp-${local.iso}-contacts@${var.domain}"
}

resource "googleworkspace_group_members" "contacts" {
  for_each = toset(var.contacts)

  group_id = googleworkspace_group.admins.id
  members {
    email = each.key
    role  = "MEMBER"
  }
}

resource "google_essential_contacts_contact" "contacts" {
  parent                              = google_folder.this.name
  email                               = googleworkspace_group.contacts.email
  language_tag                        = var.language
  notification_category_subscriptions = ["ALL"]
}
