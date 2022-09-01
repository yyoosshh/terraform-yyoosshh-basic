
resource "aws_security_group" "vault" {
    name = "webserver-sg"
    description = "Ingress for HTTP and HTTPS"
    vpc_id = aws_vpc.main.id

    dynamic "ingress" {
        for_each = var.security_group_ingress_ports
        iterator = port

        content {
            from_port = port.value
            to_port = port.value
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
}
