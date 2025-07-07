resource "yandex_compute_disk" "storage" {
  count = var.storage_disk_count
  name  = "${var.storage_disk_prefix}-${count.index}"
  type  = var.storage_disk.type
  zone  = var.default_zone
  size  = var.storage_disk.size
}

resource "yandex_compute_instance" "storage" {
  name        = var.storage_instance_name
  platform_id = var.vm_platform_id
  hostname    = var.storage_instance_name

  resources {
    cores         = var.storage_resources.cores
    memory        = var.storage_resources.memory
    core_fraction = var.storage_resources.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      type     = var.storage_boot_disk.type
      size     = var.storage_boot_disk.size
    }
  }

  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.storage
    content {
      disk_id = secondary_disk.value.id
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
}
