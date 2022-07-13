###################
### Main
###################

module "private_web_servers" {
    source                  = "./modules/pri_ec2"
    module_instance_type    = var.root_level_instance_type    
}
