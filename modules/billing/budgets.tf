// ocals {
//   budget_name    = "${lower(var.name)}-budget"
//   budget_email   = "${lower(var.nickname)}-budget@${var.domain}"
//   budget_channel = "${lower(var.name)}-channel"
// }

// resource "google_cloud_identity_group" "country_budget" {
//   display_name = "${var.nickname} Budget"
//   parent       = "customers/${data.google_organization.org.directory_customer_id}"
//   group_key {
//     id = local.budget_email
//   }
//   labels = {
//     "cloudidentity.googleapis.com/groups.discussion_forum" = ""
//   }
// }

// resource "google_billing_budget" "budget" {
//   billing_account = data.google_billing_account.account.id
//   display_name    = local.budget_name
//   amount {
//     specified_amount {
//       currency_code = var.currency
//       units         = var.units
//     }
//   }

//   threshold_rules {
//     threshold_percent = 0.5
//     spend_basis       = "CURRENT_SPEND"
//   }

//   threshold_rules {
//     threshold_percent = 0.75
//     spend_basis       = "CURRENT_SPEND"
//   }

//   threshold_rules {
//     threshold_percent = 1.0
//     spend_basis       = "FORECASTED_SPEND"
//   }

//   threshold_rules {
//     threshold_percent = 1.0
//   }

//   all_updates_rule {
//      monitoring_notification_channels = [
//        google_monitoring_notification_channel.notification.name
//      ]
//      disable_default_iam_recipients = true
//   }
// }

// resource "google_monitoring_notification_channel" "notification" {
//   project      = var.project.name
//   display_name = local.budget_channel
//   type         = "email"
//   labels = {
//     email_address = google_cloud_identity_group.country_budget.group_key[0].id
//   }
// }
