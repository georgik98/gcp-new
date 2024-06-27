resource "google_compute_network" "vpc_network" {
  name = var.network_name
}

resource "google_compute_subnetwork" "subnet" {
  name = var.subnet_name
  ip_cidr_range = "10.0.0.0/16"
  network = google_compute_network.vpc_network.name
  region = var.region
}