resource "aws_instance" "pri_web_server" { 
  ami           = data.aws_ami.amazon_linux_2.id
  instance_type = var.local_module_instance_type
}
