resource "aws_instance" "ec2_instance" {

  key_name = "${var.key_name}"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  count = "${var.number_of_instances}"
  subnet_id = "${var.subnet_id}"
  vpc_security_group_ids = ["${split(",", var.vpc_security_group_ids)}"]

  tags {
    name = "${var.tag_name}"
    description = "${var.tag_description}"
    environment = "${var.tag_environment}"
    creator = "${var.tag_creator}"
    customer = "${var.tag_customer}"
    owner = "${var.tag_owner}"
    product = "${var.tag_product}"
    costcenter = "${var.tag_costcenter}"
  }

}
