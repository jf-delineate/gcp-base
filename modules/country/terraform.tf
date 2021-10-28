terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.90.0"
    }
    googleworkspace = {
      source  = "hashicorp/googleworkspace"
      version = "0.5.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "googleworkspace" {
  customer_id = "C02x9m50f"
}
