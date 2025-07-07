variable "cloud_id" {
  type        = string
  description = "Yandex Cloud ID"
}

variable "folder_id" {
  type        = string
  description = "Yandex Cloud Folder ID"
}

variable "token" {
  type        = string
  description = "Yandex Cloud OAuth token"
  sensitive   = true
}

variable "vms_ssh_root_key" {
  type        = string
  description = "SSH public key for VM access"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Default zone for resources"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "Default CIDR for subnet"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network name"
}

variable "vm_image_family" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "Image family for VMs"
}

variable "vm_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID for VMs"
}

# Web instances variables
variable "web_count" {
  type        = number
  default     = 2
  description = "Number of web instances to create"
}

variable "web_prefix" {
  type        = string
  default     = "web"
  description = "Prefix for web instance names"
}

variable "web_resources" {
  type = object({
    cores         = number
    memory        = number
    core_fraction = number
  })
  default = {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }
  description = "Resource configuration for web instances"
}

variable "web_boot_disk" {
  type = object({
    type = string
    size = number
  })
  default = {
    type = "network-hdd"
    size = 20
  }
  description = "Boot disk configuration for web instances"
}

# Storage variables
variable "storage_disk_count" {
  type        = number
  default     = 3
  description = "Number of storage disks to create"
}

variable "storage_disk_prefix" {
  type        = string
  default     = "disk"
  description = "Prefix for storage disk names"
}

variable "storage_disk" {
  type = object({
    type = string
    size = number
  })
  default = {
    type = "network-hdd"
    size = 1
  }
  description = "Storage disk configuration"
}

variable "storage_instance_name" {
  type        = string
  default     = "storage"
  description = "Name of the storage instance"
}

variable "storage_resources" {
  type = object({
    cores         = number
    memory        = number
    core_fraction = number
  })
  default = {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }
  description = "Resource configuration for storage instance"
}

variable "storage_boot_disk" {
  type = object({
    type = string
    size = number
  })
  default = {
    type = "network-hdd"
    size = 10
  }
  description = "Boot disk configuration for storage instance"
}
