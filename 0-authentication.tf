# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project     = "your-project-id"
  region      = "us-central1"
  credentials = "yourcredkey.json"
}