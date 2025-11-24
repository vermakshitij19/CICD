terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = "project-fe7d28ee-6aa8-4b6f-88b"
  region  = "us-central1"
  zone    = "us-central1-a"
  #credentials = file("service-account.json")   # Path to your SA key
}

resource "google_compute_instance" "dev" {
  name         = "VMfromenkins"
  machine_type = "e2-micr_
