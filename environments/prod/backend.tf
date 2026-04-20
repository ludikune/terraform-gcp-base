terraform {
  backend "gcs" {
    bucket  = "HERE-THE-BUCKET-NAME"
    prefix  = "prod"
  }
}
