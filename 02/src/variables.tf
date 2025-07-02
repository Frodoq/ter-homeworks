variable "cloud_id" {
  type        = string
  description = "Cloud ID from Yandex Cloud"
}

variable "folder_id" {
  type        = string
  description = "Folder ID from Yandex Cloud"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Default zone"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Default CIDR"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC name"
}

variable "vms_ssh_root_key" {
  type        = string
  description = "SSH public key"
}

variable "environment" {
  type        = string
  default     = "develop"
  description = "Environment name (e.g., develop, stage, prod)"
}

variable "vm_role" {
  type        = string
  default     = "platform"
  description = "Role of the VM (e.g., platform, database)"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "common_metadata" {
  type = map(any)
  default = {
    serial-port-enable = 1
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEPLbYo2SQ+P+AGPvlhAh7iKH/yMcFXVgKfFapHK98sY dev-sokolkov@compute-vm-2-2-10-ssd-1750679962256"
  }
}
