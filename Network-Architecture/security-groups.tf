resource "aws_security_group" "public-security-group" {
    name = "Allow HTTPS"

    ingress  {
        from_port = var.public_security_group_ingress_from_port
        to_port = var.public_security_group_ingress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress  {
        from_port = var.public_security_group_egress_from_port
        to_port = var.public_security_group_egress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "private-security-group-1" {
    name = "Security Group For Private Subnet 1"

    ingress  {
        from_port = var.private_security_group_ingress_from_port
        to_port = var.private_security_group_ingress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress  {
        from_port = var.private_security_group_egress_from_port
        to_port = var.private_security_group_egress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "private-rds-security-group" {
    name = "Allow Database Port"

    ingress  {
        from_port = var.private_rds_security_group_ingress_from_port
        to_port = var.private_rds_security_group_ingress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress  {
        from_port = var.private_rds_security_group_egress_from_port
        to_port = var.private_rds_security_group_egress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}