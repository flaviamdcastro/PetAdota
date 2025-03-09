resource "google_compute_instance" "vm_petadota_full" {
  name         = "vm-petadota-full-mysql"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {} # IP público
  }

   metadata = {
    ssh-keys = "usuario:${file("~/.ssh/id_rsa.pub")}"
  }

}

output "vm_ip" {
  value = google_compute_instance.vm_petadota.network_interface.0.access_config.0.nat_ip
}
