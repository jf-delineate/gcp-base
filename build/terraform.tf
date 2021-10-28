terraform {
  required_version = ">= 1.0.9, < 2.0.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.90.0, < 4.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0, < 4.0.0"
    }
  }
  backend "gcs" {
    bucket = "io-delineate-terraform"
    prefix = "terraform/state"
  }
}

provider "google" {}
