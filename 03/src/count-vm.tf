data "yandex_compute_image" "ubuntu" {
  family = var.vm_image_family
}

resource "yandex_compute_instance" "web" {
  count = var.web_count
  name  = "${var.web_prefix}-${count.index + 1}"
  platform_id = var.vm_platform_id
  hostname    = "${var.web_prefix}-${count.index + 1}"

  resources {
    cores         = var.web_resources.cores
    memory        = var.web_resources.memory
    core_fraction = var.web_resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      type     = var.web_boot_disk.type
      size     = var.web_boot_disk.size
    }
  }

  network_interface {
    subnet_id          = yandex_vpc_subnet.develop.id
    security_group_ids = [yandex_vpc_security_group.ssh-sg.id]
    nat                = true
  }

  metadata = {
    ssh-keys = "ubuntu:${var.vms_ssh_root_key}"
  }

  depends_on = [yandex_compute_instance.db]
}
