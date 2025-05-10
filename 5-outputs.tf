# Output the public URL for the uploaded image
# This constructs the URL using the bucket name and image object name

output "germany_image_url" {
  description = "Public URL for the uploaded image"
  value       = "https://storage.googleapis.com/${google_storage_bucket.be-a-man-level-7.name}/${google_storage_bucket_object.germany.name}"
}

# Output the public site URL for the GCS-hosted website
# This uses the bucket's public website endpoint

output "site_url" {
  description = "Public URL to access the custom website"
  value       = "https://storage.googleapis.com/${google_storage_bucket.be-a-man-level-7.name}/${google_storage_bucket_object.germany_html.name}"
}
