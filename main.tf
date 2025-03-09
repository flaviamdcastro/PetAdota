terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0" # ou a versão mais recente
    }
  }
}

provider "google" {
  project     = "decoded-app-453116-m4" # ID do seu projeto GCP
  region      = "us-central1" # Região padrão, você pode alterar
  credentials = file("/content/decoded-app-453116-m4-83736621c012.json") # Usa a variável de ambiente configurada
}

resource "google_storage_bucket" "petadota_bucket" {
  name          = "petadota-bucket-storage-dugulin" # nome de bucket único globalmente
  location      = "US" # Localização do bucket
  storage_class = "STANDARD" # Classe de armazenamento
}
