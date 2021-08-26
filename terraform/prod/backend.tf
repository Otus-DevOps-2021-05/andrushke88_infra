terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "epicbucket"
    region                      = "ru-central1-a"
    key                         = "terraform.tfstate"
    access_key                  = "SpSHeIUZv6UME0AYuVwD"
    secret_key                  = "nA2riW6FzisgHwHy7LaUHl8-NZe7MwIjannvASzz"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}