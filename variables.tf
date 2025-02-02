variable "project_name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR principal de VPC"
  default     = ""
}

variable "vpc_additional_cidrs" {
  type        = list(string)
  description = "Lista de CIDR's adicionales del VPC"
  default     = []
}


variable "public_subnets" {
  description = "Lista de Public Subnets del VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "private_subnets" {
  description = "Lista de Private Subnets del VPC"
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}

variable "database_subnets" {
  description = "Lista de Database Subnets da VPC"
  default     = []
  type = list(object({
    name              = string
    cidr              = string
    availability_zone = string
  }))
}
