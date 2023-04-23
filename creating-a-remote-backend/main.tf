provider "google" {
  project = "qwiklabs-gcp-02-43c04b11fc50"
  region  = "us-central-1"
}
resource "google_storage_bucket" "test-bucket-for-state" {
  name                        = "qwiklabs-gcp-02-43c04b11fc50"
  location                    = "US"
  uniform_bucket_level_access = true
  force_destroy               = true
}
terraform {
  # Local backend
  backend "local" {
    path = "terraform/state/terraform.tfstate"
  }

  /*
  # Cloud Storage Backend
  backend "gcs" {
    bucket = "qwiklabs-gcp-02-43c04b11fc50"
    prefix = "terraform/state"
  }
  */
}
