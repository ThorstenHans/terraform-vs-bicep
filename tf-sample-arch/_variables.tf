variable "location" {
  type        = string
  default     = "germanywestcentral"
  description = "Which Azure region should be used?"
}

variable "tags" {
  type    = map(string)
  default = { "com.thorsten-hans.provisioner" : "HashiCorp Terraform" }
}


variable "image_tag" {
  type    = string
  default = "hero"
}

variable "sql_admin_password" {
  type        = string
  sensitive   = true
  description = "Administrator Password for SQL Server"
}
