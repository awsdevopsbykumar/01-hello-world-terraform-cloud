# Configure the Google Cloud provider
provider "google" {
  credentials = var.GOOGLE_CREDENTIALS
  project = "alert-autumn-442107-g2"
  region  = "us-east1-b"
}

terraform { 
  cloud { 
    
    organization = "awsdevopsbykumar" 

    workspaces { 
      name = "tf-gcp-demo" 
    } 
  } 
}

variable "GOOGLE_CREDENTIALS" {
 default = ""
}

resource "google_compute_instance" "default" {
  name         = "example-instance"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Include public IP
    }
  }
}
