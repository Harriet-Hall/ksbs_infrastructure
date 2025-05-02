variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.1.0/24"]

}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.4.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
}

variable "db_username" {
  type        = string
  description = "username for postges db"
  sensitive   = true
}
variable "db_password" {
  type        = string
  description = "password for postges db"
  sensitive   = true
}
variable "db_host" {
  type        = string
  description = "host for postges db"
  sensitive   = true
}
variable "db_port" {
  type        = string
  description = "port for postges db"
  sensitive   = true
}
variable "db_database" {
  type        = string
  description = "database for postges db"
  sensitive   = true
}