variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable subnet_id {
  description = "Subnet for modules"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable private_key_path {
  description = "Path to the public key used for ssh access"
}

variable name {
  description = "Instance name"
  type        = string
  default     = "reddit-app"
}
variable enable_provision {
  description = "Enable provision"
  default = false
}