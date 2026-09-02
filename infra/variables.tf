variable "location" {
  type    = string
  default = "South India"
}

variable "resource_group_name" {
  type    = string
  default = "rg-hussain-enterprise"
}

variable "app_version" {
  type        = string
  description = "Global application release version"
  default     = "1.0.0"
}