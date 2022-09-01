root_level_instance_type = "t2.micro"

security_group_ingress_ports = {
    type = list(number)
    description = "list of ingress ports"
    default = [80, 443]
}