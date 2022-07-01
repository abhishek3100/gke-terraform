terraform {
  backend "gcs" {
    prefix = "terraform/state"
    bucket = "gke-test-28"
  }
}