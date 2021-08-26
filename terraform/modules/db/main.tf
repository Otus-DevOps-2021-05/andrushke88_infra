resource "yandex_compute_instance" "db" {
  name = "reddit-db"
  labels = {
    tags = "reddit-db"
  }

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 5
    gpus          = 0
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
      }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
      }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
  connection {
    type  = "ssh"
    host  = yandex_compute_instance.db.network_interface.0.nat_ip_address
    user  = "ubuntu"
    agent = false
    private_key = file(var.private_key_path)
  }

  provisioner "file" {
    source      = var.path_mongod_conf
    destination = "/tmp/mongod.conf"
  }

  provisioner "remote-exec" {
    inline = [
      "systemctl stop mongod",
      "mv /tmp/mongod.conf /etc/mongod.conf",
      "systemctl start mongod"
    ]
  }
}