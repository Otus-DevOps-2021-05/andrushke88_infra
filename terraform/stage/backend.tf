terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "epicbucket1"
    region                      = "ru-central1-a"
    key                         = "stage/terraform.tfstate"
    access_key                  = "x4GEn2F4_gRI5j8PAAai"
    secret_key                  = "4roGbVD1hT-kuFcsGcGyWgfbuZgIcoObgmVhbFU-"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}