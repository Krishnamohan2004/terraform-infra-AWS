variable "region" {
  type = string
}

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "az" {
  type = string
}

variable "ecr_name" {
  type = string
}

variable "eks_name" {
  type = string
}

variable "node_count" {
  type = number
}

variable "instance_type" {
  type = string
}

variable "eks_role_arn" {
  type = string
}

variable "node_role_arn" {
  type = string
}
