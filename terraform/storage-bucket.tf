provider "yandex" {
  version                  = "0.35"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  service_account_key_file = var.service_account_key_file
}

resource "yandex_storage_bucket" "test100500" {
  access_key    = var.access1
  secret_key    = var.secret
  bucket        = "epicbucket"
  force_destroy = true
}