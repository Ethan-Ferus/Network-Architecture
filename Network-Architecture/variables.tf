variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
    type = string
    default = "10.0.0.0/24"
}

variable "public_subnet_1_availability_zone" {
    type = string
    default = "eu-north-1a"
}

variable "public_subnet_2_cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "public_subnet_2_availability_zone" {
    type = string
    default = "eu-north-1b"
}

variable "private_subnet_1_cidr_block" {
    type = string
    default = "10.0.2.0/24"
}

variable "private_subnet_1_availability_zone" {
    type = string
    default = "eu-north-1a"
}

variable "private_subnet_2_cidr_block" {
    type = string
    default = "10.0.3.0/24"
}

variable "private_subnet_2_availability_zone" {
    type = string
    default = "eu-north-1b"
}

variable "private_subnet_3_cidr_block" {
    type = string
    default = "10.0.4.0/24"
}

variable "private_subnet_3_availability_zone" {
    type = string
    default = "eu-north-1a"
}

variable "private_subnet_4_cidr_block" {
    type = string
    default = "10.0.5.0/24"
}

variable "private_subnet_4_availability_zone" {
    type = string
    default = "eu-north-1b"
}

variable "public_security_group_ingress_from_port" {
    type = number
    default = 443
}

variable "public_security_group_ingress_to_port" {
    type = number
    default = 443
}

variable "public_security_group_egress_from_port" {
    type = number
    default = 443
}

variable "public_security_group_egress_to_port" {
    type = number
    default = 443
}

variable "private_security_group_ingress_from_port" {
    type = number
    default = 443
}

variable "private_security_group_ingress_to_port" {
    type = number
    default = 443
}

variable "private_security_group_egress_from_port" {
    type = number
    default = 443
}

variable "private_security_group_egress_to_port" {
    type = number
    default = 443
}

variable "private_rds_security_group_ingress_from_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_ingress_to_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_egress_from_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_egress_to_port" {
    type = number
    default = 3306
}

variable "public_route_table_cidr_block" {
    type = string
    default = "0.0.0.0/0"
}

variable "private_route_table_cidr_block" {
    type = string
    default = "0.0.0.0/0"
}