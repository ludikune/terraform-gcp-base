resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-terraform-state"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  labels = {
    managed-by = "terraform"
  }
}
