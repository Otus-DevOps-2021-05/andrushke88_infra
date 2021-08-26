terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "epicbucket1"
    region                      = "ru-central1-a"
    key                         = "terraform.tfstate"
    access_key                  = "access key"
    secret_key                  = "secret key"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}