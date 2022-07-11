
resource "aws_vpc" "make_network" {
    cidr_block = var.staging-vpc.cidr
}

resource "aws_subnet" "main_subnets" {
    count = length(var.staging-vpc.subnets)
    cidr_block = values(var.staging-vpc.subnets)[count.index].cidr
    availability_zone = values(var.staging-vpc.subnets)[count.index].availability_zone
    tags = {
        Name = keys(var.staging-vpc.subnets)[count.index]
    }
    vpc_id = aws_vpc.make_network.id
}
