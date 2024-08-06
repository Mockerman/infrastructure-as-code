# 1. VPC
resource "aws_vpc" "demo" {
  cidr_block = "10.0.0.0/16"

  enable_dns_hostnames = true
  enable_dns_support   = true
}

# 2. Subnet
resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.demo.id
  cidr_block = "10.0.2.0/24"
}

# 3. Internet Gateway
resource "aws_internet_gateway" "demo" {
  vpc_id = aws_vpc.demo.id
}

# 4. Routing Table 
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.demo.id

  # Route zum Internet Gateway
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demo.id
  }

  tags = {
    Name = "public-route"
  }
}

# 5. Verbindung: Routing Tabelle + Subnet
resource "aws_route_table_association" "public_subnet" {
  route_table_id = aws_route_table.public.id
  subnet_id      = aws_subnet.public_1.id
}
