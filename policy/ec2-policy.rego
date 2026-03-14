package ec2

deny[msg] {
  input.resource_type == "aws_instance"
  input.instance_type != "t3.micro"
  msg = sprintf("Only t3.micro instances are allowed. Found: %v", [input.instance_type])
}
