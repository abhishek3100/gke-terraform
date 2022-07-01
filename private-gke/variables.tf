variable "project_id" {
  description = "The project ID to host the cluster in"
  default     = "abhishekx"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "dev-gke"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}
variable "region" {
  description = "The region to host the cluster in"
  default     = "us-central1"
}
variable "zones" {
  type        = list(string)
  description = "GCP zones for the resources"
  default     = ["us-central1-a", "us-central1-b", "us-central1-c"]
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "gke-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "gke-subnet"
}
variable "subnet_ip" {
  description = "The IP and CIDR range of the subnet being created"
  default     = "10.10.0.0/16"
}
variable "ip_cidr_range_pods" {
  description = "Secondary ranges that will be used in K8s Pods"
  default     = "10.20.0.0/16"
}
variable "ip_cidr_range_svc" {
  description = "Secondary ranges that will be used in K8s Services"
  default     = "10.30.0.0/16"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}
variable "cloud_router_name" {
  description = "Name for Cloud Router"
  default     = "my-cloud-router"
}
variable "cloud_nat_name" {
  description = "Name for Cloud NAT"
  default     = "my-nat-gateway"
}