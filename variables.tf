variable "location" {
  description = "Azure region"
  type        = string
  default     = "WestUS2"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-prod-multitier"
}

variable "sql_admin_username" {
  description = "SQL admin username"
  type        = string
  default     = "sqladminuser"
}

variable "sql_admin_password" {
  description = "SQL admin password"
  type        = string
  sensitive   = true
}