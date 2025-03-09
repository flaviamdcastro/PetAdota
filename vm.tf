resource "google_compute_instance" "vm_petadota" {
  name         = "vm-petadota-webserver"
  machine_type = "e2-medium" # Tipo de máquina (pode ser ajustado)
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11" # Imagem do sistema operacional (Debian 11)
    }
  }

  network_interface {
    network = "default" # Rede padrão
    access_config {}     # Endereço IP público (efêmero, por padrão)
  }

#    metadata = {
#    ssh-keys = "meuusuario:${file("~/.ssh/id_rsa.pub")}" # ou o caminho completo para a chave
#  }
}


output "vm_public_ip" {
  value = google_compute_instance.vm_petadota.network_interface.0.access_config.0.nat_ip
}
