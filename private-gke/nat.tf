module "cloud_router" {
  source     = "terraform-google-modules/cloud-router/google"
  version    = "~> 0.4"
  depends_on = [module.gcp-network]
  name       = var.cloud_router_name
  project    = var.project_id
  network    = "${var.network}-${var.env_name}"
  region     = var.region

  nats = [{
    name = var.cloud_nat_name
  }]
}