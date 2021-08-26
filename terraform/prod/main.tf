provider "yandex" {
  version                  = "0.35"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
  service_account_key_file = var.service_account_key_file
}

module "app" {
  source          = "../modules/app"
  name            = "reddit-app-prod"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
  private_key_path = var.private_key_path
  dbip             = module.db.internal_ip_address_db
  }

module "db" {
  source          = "../modules/db"
  name            = "reddit-db-prod"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
  private_key_path = var.private_key_path
}