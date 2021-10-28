data "google_billing_account" "this" {
  display_name = "${local.iso}-billing"
}

# TODO: Set the budgets on the billing country billing account
