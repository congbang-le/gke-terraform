resource "google_storage_bucket" "tf_state" {
  name          = "banglc-tf-state"
  location      = "ASIA-SOUTHEAST1"
  force_destroy = true
  project       = "halogen-antenna-298109"
}