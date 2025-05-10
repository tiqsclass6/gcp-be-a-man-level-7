# IAM: Grant allUsers permission to view public objects
# Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding

# Allow public read access to objects (germany.jpg, germany.html)
resource "google_storage_bucket_iam_binding" "object_viewer" {
  bucket = google_storage_bucket.be-a-man-level-7.name
  role   = "roles/storage.objectViewer"

  members = [
    "allUsers"
  ]
}
