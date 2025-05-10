# GCS Bucket Resource Definition
# Creates a Google Cloud Storage bucket for static website hosting
# Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

resource "google_storage_bucket" "be-a-man-level-7" {
  name          = var.bucket_name # The globally unique name of the bucket
  location      = var.region      # GCP region where the bucket will reside
  force_destroy = true            # Allows Terraform to delete bucket even if it contains objects

  # Required setting to allow individual object permissions
  # Needed for public access and object-level control
  uniform_bucket_level_access = false

  # Enables static website hosting configuration for the bucket
  website {
    main_page_suffix = "germany.html" # This is served as the homepage (e.g., for /)
    not_found_page   = "404.html"     # This is served for 404 errors or invalid URLs
  }
}
