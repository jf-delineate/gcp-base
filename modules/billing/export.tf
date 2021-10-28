// resource "google_logging_billing_account_sink" "bq_sink" {
//   name            = "bq-sink"
//   description     = "some explaination on what this is"
//   billing_account = data.google_billing_account.account.id
//   destination     = "bigquery.googleapis.com/projects/${var.project.project_id}/datasets/billing_daily_costs"
// }

// resource "google_billing_account_iam_member" "editor" {
//   billing_account_id = data.google_billing_account.account.id
//   role               = "roles/logging.configWriter"
//   member             = "serviceAccount:organisation@io-delineate-service-accounts.iam.gserviceaccount.com"
// }
