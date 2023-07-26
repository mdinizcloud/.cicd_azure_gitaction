variable "resource_group_name" {
  type        = string
  default     = "stgazure3112"
  description = "Resource Group Name"
}

variable "location" {
  type        = string
  default     = "West US"
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