provider "google" {
  project = "tidy-alchemy-377317"
  region  = "europe-west1"
}

provider "google-beta" {
  project = "tidy-alchemy-377317"
  region  = "europe-west1"
}


terraform {
  backend "gcs" {
    # check these files for more information
    # ./backend/development.tfvars
    # ./backend/production.tfvars
  }
  required_providers {
    google-beta = {}
    google = {}
  }
}
