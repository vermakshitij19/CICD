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

resource "google_compute_instance" "dev" {
  name         = "jenkins-tf-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
