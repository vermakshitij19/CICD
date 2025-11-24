terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project     = "project-fe7d28ee-6aa8-4b6f-88b"
  region      = "us-central1"
  zone        = "us-central1-a"

  impersonate_service_account = "terraform-sa@project-fe7d28ee-6aa8-4b6f-88b.iam.gserviceaccount.com"
}
