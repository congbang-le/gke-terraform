# GKE Terraform Demo

## Description
This project stimulates a GKE infrastructure created by Terraform/Terragrunt with VPC, Subnet, GKE cluster and Node Pool

## Usage
### Prerequisite
Authenticate with Google account
```
gcloud auth application-default login
```
### Backend provisioning
Provision GCS as Terraform backend
```
cd provision-gcs-backend
terraform init
terraform plan --out "tfplan"
terraform apply "tfplan"

```
### Environment provisioning
Provision GKE cluster to both UAT and Production environment
```
cd live
terragrunt run-all apply
```
### Access to cluster and get cluster info
```
cd live/uat
gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)
```
### Clean up
```
cd live
terragrunt run-all destroy
cd ../provision-gcs-backend
terraform destroy
```


## License
Distributed under the MIT License. See [LICENSE](./LICENSE) for more information.


