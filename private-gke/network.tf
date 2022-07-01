module "gcp-network" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 5.1.0"
  project_id   = var.project_id
  network_name = "${var.network}-${var.env_name}"
  subnets = [
    {
      subnet_name           = "${var.subnetwork}-${var.env_name}"
      subnet_ip             = var.subnet_ip
      subnet_region         = var.region
      subnet_private_access = true
    },
  ]
  secondary_ranges = {
    "${var.subnetwork}-${var.env_name}" = [
      {
        range_name    = var.ip_range_pods_name
        ip_cidr_range = var.ip_cidr_range_pods
      },
      {
        range_name    = var.ip_range_services_name
        ip_cidr_range = var.ip_cidr_range_svc
      },
    ]
  }
}