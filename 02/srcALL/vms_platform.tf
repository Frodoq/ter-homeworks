# Variables for WEB VM
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

/*
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
*/

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

/*
variable "vm_web_serial_port_enable" {
  type        = number
  default     = 1
  description = "Enable serial port for web server"
}
*/

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2204-lts"
  description = "Image family for web server"
}

# Variables for DB VM
variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  description = "DB server name"
}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "Platform ID for DB server"
}

/*
variable "vm_db_cores" {
  type        = number
  default     = 2
  description = "CPU cores for DB server"
}

variable "vm_db_memory" {
  type        = number
  default     = 2
  description = "Memory in GB for DB server"
}

variable "vm_db_core_fraction" {
  type        = number
  default     = 20
  description = "CPU core fraction for DB server"
}
*/

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "Zone for DB server"
}

variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "Use preemptible instance for DB server"
}

variable "vm_db_nat" {
  type        = bool
  default     = true
  description = "Enable NAT for DB server"
}

/*
variable "vm_db_serial_port_enable" {
  type        = number
  default     = 1
  description = "Enable serial port for DB server"
}
*/
