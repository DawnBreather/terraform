#
# MAINTAINER Vitaliy Natarov "vitaliy.natarov@yahoo.com"
#
terraform {
  required_version = "~> 0.13"
}

provider "google" {
  credentials = "${file("/Users/captain/.config/gcloud/creds/terraform_creds.json")}"
  project     = "terraform-2018"
  region      = "us-east1"
}

module "compute_image" {
  source = "../../modules/compute_image"
  name   = "TEST"

  project         = "terraform-2018"
  raw_disk_source = "https://storage.googleapis.com/my-bucket/my-disk-image-tarball.tar.gz"
}
