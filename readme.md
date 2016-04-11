### terraform-aws-ec2

A module that launches a properly tagged ec2 instance into a specified vpc/subnet.

usage

```terraform
module "ec2" {
  source = "github.com/jritsema/terraform-aws-ec2"

  key_name = "mykey"
  ami = "ami-fce3c696"
  instance_type = "t2.small"
  subnet_id = "subnet-4a887f3c"

  tag_name = "ec2 instance"
  tag_description = "test ec2 instance"
  tag_creator = "creator"
  tag_product = "product"
  tag_customer = "customer"
  tag_owner = "owner"
  tag_environment = "dev"
  tag_costcenter = "TBD"
}
```

### Variables

- `key_name` - key name for ssh access
- `instance_type` - Instance type for instance (default: `t2.small`)
- `number_of_instances` (default: 1)
- `subnet_id` - subnet to launch in
- `tag_name`
- `tag_description`
- `tag_creator`
- `tag_product`
- `tag_customer`
- `tag_owner`
- `tag_environment`
- `tag_costcenter`

### Outputs

- `ec2_instance_id` - the ID of the EC2 instance created
