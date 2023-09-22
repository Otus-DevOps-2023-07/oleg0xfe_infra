source "yandex" "ubuntu16" {
  service_account_key_file = var.service_account_key_file
  folder_id = var.folder_id
  zone = "ru-central1-a"
  subnet_id = "e9b6t9ba3s3uc994gmlm"
  use_ipv4_nat = "true"
  source_image_family = var.source_image_family
  image_name = "reddit-base-${formatdate("MM-DD-YYYY", timestamp())}"
  image_family = "reddit-base"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
}

build {
  sources = ["source.yandex.ubuntu16"]

  provisioner "shell" {
    name = "ruby"
    script = "scripts/install_ruby.sh"
    execute_command = "sudo {{.Path}}"
  }

  provisioner "shell" {
    name = "mongodb"
    script = "scripts/install_mongodb.sh"
    execute_command = "sudo {{.Path}}"
  }
}
