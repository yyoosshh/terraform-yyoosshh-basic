###################
### Main
###################

module "private_web_servers" {
    source = "./modules/pri_ec2"
    local_module_instance_type = var.root_level_instance_type    
}

module "Inbound_security_group" {
    source = "./modules/sg"

    sg_ingress_ports = var.security_group_ingress_ports
}
