resource "local_file" "inventory" {
  content = templatefile("inventory.tpl", {
    webservers = yandex_compute_instance.web,
    databases  = values(yandex_compute_instance.db),
    storage    = [yandex_compute_instance.storage]
  })
  filename = "inventory.ini"
  file_permission = "0644"
}

output "inventory" {
  value = local_file.inventory.content
}
