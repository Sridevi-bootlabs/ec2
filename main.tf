resource "aws_instance" "{{.template_name}}_web-server" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "sailorcostest"
  subnet_id                   = "subnet-0c74fdd30bc2a6487"
(*   vpc_security_group_ids      = var.{{.template_name}}_vpc_security_group_ids
  user_data                   = var.{{.template_name}}_user_data *)
(*   disable_api_termination     = var.{{.template_name}}_disable_api_termination
 *)
  root_block_device {
    volume_size           = 30
(*     delete_on_termination = 
    encrypted             = var.{{.template_name}}_encrypted *)
  }
  metadata_options {
    http_endpoint = "enabled"
  }
  tags = {
    Name = "env0test"
  }

}
