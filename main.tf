terraform {
  backend "remote" {
    organization = "infrastructure-pipeline-workshop"

    workspaces {
      name = "peter-l-k8s"
    }
  }
}

provider "google" {
  version = "3.10.0"
  project = var.google_project
  region  = var.region
}
