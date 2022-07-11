module "network" {
    source = "./sample_module_network"
}
# module "db" {
#     source = "./sample_module_db"
#     vpc_id = module.network.id
# }
