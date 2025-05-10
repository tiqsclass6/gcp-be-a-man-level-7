# GCP project ID where resources will be deployed
variable "project_id" {
  description = "Your Google Cloud Project ID"
  type        = string
  default     = "class-6-5-tiqs" # Replace with your actual GCP project ID
}

# GCP region for bucket creation
variable "region" {
  description = "The region to create the GCS bucket in"
  type        = string
  default     = "us-central1"
}

# Globally unique name for the GCS bucket
variable "bucket_name" {
  description = "Unique name of the bucket"
  type        = string
  default     = "be-a-man-level-7" # Must be unique across all GCP projects.
}

# Local path to the image to upload (germany.jpg or other)
variable "germany" {
  description = "Path to Heiße Deutsche Frau (image file)"
  type        = string
  default     = "germany.jpg" # Use your own file name
}

# Local path to the main HTML file (landing page)
variable "index_file" {
  description = "Path to the germany.html file"
  type        = string
  default     = "germany.html"
}