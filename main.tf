resource "aws_instance" "web-server" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  key_name                    = "sailorcostest"
  subnet_id                   = "subnet-0c74fdd30bc2a6487"
  root_block_device {
    volume_size           = 30
  }
  metadata_options {
    http_endpoint = "enabled"
  }
  tags = {
    Name = "env0test"
  }

}
