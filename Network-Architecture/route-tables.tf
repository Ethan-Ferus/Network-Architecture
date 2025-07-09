resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.myvpc.id 

    route {
        cidr_block = var.public_route_table_cidr_block
        gateway_id = aws_internet_gateway.internet-gateway.id 
    }

    tags = {
        Name = "Public Route Table"
    }
}

resource "aws_route_table_association" "public-route-table-subnet-1" {
    subnet_id = aws_subnet.public-subnet-1.id 
    route_table_id = aws_route_table.public-route-table.id 
}

resource "aws_route_table_association" "public-route-table-subnet-2" {
    subnet_id = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.public-route-table.id 
}

resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.myvpc.id

    route {
        cidr_block = var.private_route_table_cidr_block
        gateway_id = aws_internet_gateway.internet-gateway.id 
    }

    tags = {
        Name = "Private Route Table"
    }
}

resource "aws_route_table_association" "private-route-table-subnet-1" {
    subnet_id = aws_subnet.private-subnet-1.id 
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-subnet-2" {
    subnet_id = aws_subnet.private-subnet-2.id
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-subnet-3" {
    subnet_id = aws_subnet.private-subnet-3.id 
    route_table_id = aws_route_table.private-route-table.id 
}

resource "aws_route_table_association" "private-route-table-subnet-4" {
    subnet_id = aws_subnet.private-subnet-4.id
    route_table_id = aws_route_table.private-route-table.id 
}