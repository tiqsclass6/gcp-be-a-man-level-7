# Upload the Germany image file to the GCS bucket
# This image can be referenced in the HTML website
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object

resource "google_storage_bucket_object" "germany" {
  name         = "germany.jpg"                               # File name as it will appear in the bucket
  bucket       = google_storage_bucket.be-a-man-level-7.name # Target bucket for upload
  source       = "resources/germany.jpg"                     # Local file path
  content_type = "image/jpeg"                                # MIME type for browser display
}

# Upload the main HTML page (homepage) to the bucket
# This will be served as the root page (germany.html)

resource "google_storage_bucket_object" "germany_html" {
  name         = "germany.html" # File name served by GCS as homepage
  bucket       = google_storage_bucket.be-a-man-level-7.name
  source       = "resources/germany.html"
  content_type = "text/html"
}

# Upload the custom 404.html page
# This page will be displayed for any missing or invalid paths

resource "google_storage_bucket_object" "not_found" {
  name         = "404.html" # GCS serves this for not-found errors
  bucket       = google_storage_bucket.be-a-man-level-7.name
  source       = "resources/404.html"
  content_type = "text/html"
}
