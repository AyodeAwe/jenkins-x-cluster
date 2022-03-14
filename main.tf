module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.11"
  gcp_project = "jenkins-x"
  cluster_name = "jx-cluster"
}

terraform {
    backend "gcs" {
        bucket = "jawe-jx-terraform-state-files"
        prefix = "terraform/state"
    }
}