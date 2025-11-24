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
  # Using gcloud ADC (no service account JSON required)
}

resource "google_compute_instance" "dev" {
  name         = "vm-from-jenkins"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "projects/debian-cloud/global/images/family/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }

  labels = {
    env = "dev"
  }
}
