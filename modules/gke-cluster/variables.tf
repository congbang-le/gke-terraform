variable "project_id" {
  description = "Project ID"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "gke_num_nodes" {
  description = "Number of GKE nodes"
}

variable "ip_cidr_range" {
  description = "VPC IP cidr range"
}

variable "cluster_name" {
  description = "GKE Cluster name"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
}