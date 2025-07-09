resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr_block

    tags = {
        Name = "VPC"
    }
}

resource "aws_internet_gateway" "internet-gateway" {
    vpc_id = aws_vpc.myvpc.id 

    tags = {
        Name = "Internet Gateway"
    }
}

resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.myvpc.id 
    cidr_block = var.public_subnet_1_cidr_block
    availability_zone = var.public_subnet_1_availability_zone
    map_public_ip_on_launch = true

    tags = {
        Name = "Public Subnet 1"
    }
}

resource "aws_subnet" "public-subnet-2" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.public_subnet_2_cidr_block
    availability_zone = var.public_subnet_2_availability_zone
    map_public_ip_on_launch = true

    tags = {
        Name = "Public Subnet 2"
    }
}

resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_1_cidr_block
    availability_zone = var.private_subnet_1_availability_zone
    map_public_ip_on_launch = false 

    tags = {
        Name = "Private Subnet 1"
    }
}

resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.myvpc.id 
    cidr_block = var.private_subnet_2_cidr_block
    availability_zone = var.private_subnet_2_availability_zone
    map_public_ip_on_launch = false 

    tags = {
        Name = "Private Subnet 2"
    }
}

resource "aws_subnet" "private-subnet-3" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_3_cidr_block
    availability_zone = var.private_subnet_3_availability_zone
    map_public_ip_on_launch = false 

    tags = {
        Name = "Private Subnet 3"
    }
}

resource "aws_subnet" "private-subnet-4" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.private_subnet_4_cidr_block
    availability_zone = var.private_subnet_4_availability_zone
    map_public_ip_on_launch = false 

    tags = {
        Name = "Private Subnet 4"
    }
}