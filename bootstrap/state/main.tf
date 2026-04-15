# Bucket to be used as remote backed for all the environments.
# Once created backend make sure all environments use it.
resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-terraform-state"
  location      = var.region

  # Standard security settings
  force_destroy               = true
  public_access_prevention    = "enforced"
  uniform_bucket_level_access = true

  # We keep 10 newer versions
  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      num_newer_versions = 10
    }
  }

  labels = {
    managed-by = "terraform"
  }
}
