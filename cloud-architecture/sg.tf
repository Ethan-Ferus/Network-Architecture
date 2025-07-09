resource "aws_security_group" "launch-template-security-group-1" {
    name = "Allow HTTPS"

    ingress {
        from_port = var.launch_template_ingress_from_port
        to_port = var.launch_template_ingress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.launch_template_egress_from_port
        to_port = var.launch_template_egress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "launch-template-security-group-2" {
    name = "Allow HTTPS"

    ingress {
        from_port = var.launch_template_ingress_from_port
        to_port = var.launch_template_ingress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = var.launch_template_egress_from_port
        to_port = var.launch_template_egress_to_port
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


resource "aws_security_group" "private-rds-security-group-1" {
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

