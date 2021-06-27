resource "aws_subnet" "subnet_01" {
  vpc_id     = "${data.aws_vpc.default.id}"
  cidr_block = "${cidrsubnet(var.base_cidr, 8, 0)}"
}