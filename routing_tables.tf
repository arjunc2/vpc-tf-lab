resource "aws_route_table" "public_RT" {
    vpc_id = "${aws_vpc.default.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.IGW.id}"
    }
    tags = {
        Name = "${var.public_RT}"
    }
}

resource "aws_route_table" "private_RT" {
    vpc_id = "${aws_vpc.default.id}"
    tags = {
        Name = "${var.private_RT}"
    }
}

resource "aws_route_table_association" "public_RT_association" {
    count = "${length(var.public_cidrs)}"
    subnet_id = "${element(aws_subnet.public_subnets.*.id,count.index)}"
    route_table_id = "${aws_route_table.public_RT.id}"
}

resource "aws_route_table_association" "private_RT_association" {
    count = "${length(var.private_cidrs)}"
    subnet_id = "${element(aws_subnet.private_subnets.*.id,count.index)}"
    route_table_id = "${aws_route_table.private_RT.id}"
}