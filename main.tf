terraform {
  backend "gcs" {
    bucket  = "sidespin-tfssss" # backet name
    prefix  = "terraform/state"
  }
  required_version = ">= 0.13.0"
}

module "gke-gitlab" {
  source  = "terraform-google-modules/gke-gitlab/google"
  version = "0.5.2"
  certmanager_email = "gh.bliid@gmail.com"
  project_id  = "cocoun"
  gke_version = "1.20"
  gitlab_db_random_prefix = true
  gke_machine_type = "n1-standard-2"
  region = "us-central1"
}
