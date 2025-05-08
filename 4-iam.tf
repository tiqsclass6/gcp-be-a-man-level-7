# IAM: Grant allUsers permission to view public objects
# Reference: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam_binding

# Allow public read access to objects (germany.jpg, germany.html)
resource "google_storage_bucket_iam_binding" "object_viewer" {
  bucket = google_storage_bucket.germany-class-6-5-tiqs.name
  role   = "roles/storage.objectViewer"

  members = [
    "allUsers"
  ]
}

# Allow public listing of the bucket (legacy access required)
# Reference: https://cloud.google.com/storage/docs/access-control/iam-roles#legacy-roles

resource "google_storage_bucket_iam_binding" "bucket_reader" {
  bucket = google_storage_bucket.germany-class-6-5-tiqs.name
  role   = "roles/storage.legacyBucketReader"

  members = [
    "allUsers"
  ]
}
