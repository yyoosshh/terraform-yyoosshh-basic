variable "staging-vpc" {
    default = {
        name = "staging-vpc"
        cidr = "10.0.0.0/16"
        subnets = {
            subnet_1a = {
                availability_zone = "ap-northeast-1a"
                cidr = "10.0.0.0/20"
            }
            subnet_1c = {
                availability_zone = "ap-northeast-1c"
                cidr = "10.0.16.0/20"
            }
            subnet_1d = {
                availability_zone = "ap-northeast-1d"
                cidr = "10.0.32.0/20"
            }
        }
    }
}