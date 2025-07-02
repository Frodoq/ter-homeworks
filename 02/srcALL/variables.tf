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

# VM Web variables
variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "Web server name"
}

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID for web server"
}

variable "vm_web_cores" {
  type        = number
  default     = 2
  description = "CPU cores for web server"
}

variable "vm_web_memory" {
  type        = number
  default     = 1
  description = "Memory in GB for web server"
}

variable "vm_web_core_fraction" {
  type        = number
  default     = 20
  description = "CPU core fraction for web server"
}

variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Use preemptible instance for web server"
}

variable "vm_web_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for web server"
}

variable "vm_web_serial_port_enable" {
  type        = number
  default     = 1
  description = "Enable serial port for web server"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "Image family for web server"
}
