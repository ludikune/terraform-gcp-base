terraform {
  backend "gcs" {
    bucket  = "cs-poc-eeq94fmzenqr4s2pfmzydc6-terraform-state"
    prefix  = "dev"
  }
}
