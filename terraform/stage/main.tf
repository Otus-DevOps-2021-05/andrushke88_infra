provider "yandex" {
  version                  = "0.35"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  service_account_key_file = var.service_account_key_file
}

resource "yandex_storage_bucket" "test100500" {
  access_key = var.access1
  secret_key = var.secret
  bucket = "epicbucket1"
  force_destroy = true
}

module "app" {
  source          = "../modules/app"
  name            = "reddit-app-stage"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
  dbip             = module.db.internal_ip_address_db
}

module "db" {
  source          = "../modules/db"
  name            = "reddit-db-stage"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}