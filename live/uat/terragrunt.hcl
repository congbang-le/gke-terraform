# Define the module to use
terraform {
  source = "../../modules/gke-cluster"
}

# Inherit backend config from root 
include {
  path = find_in_parent_folders()
}

# Input for module
inputs = {
  #VPC vars
  project_id    = "halogen-antenna-298109"
  region        = "asia-southeast1"
  ip_cidr_range = "10.0.0.0/24"
  vpc_name      = "uat-vpc"
  # GKE vars
  cluster_name  = "uat-cluster"
  gke_num_nodes = 1
}