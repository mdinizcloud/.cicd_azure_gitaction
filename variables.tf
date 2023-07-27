variable "resource_group_name" {
  type        = string
  default     = "1-0d931743-playground-sandbox"
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "The Resource Location"
}

variable "storage_account_name" {
  type        = string
  default     = "stgazure3112"
  description = "The storage account name"
}

variable "environment" {
  type        = string
  default     = "Production"
  description = "The environment either Production or Development"
}

variable "type" {
  type        = string
  default     = "EC2"
  description = "Virtual Machine Example"
}