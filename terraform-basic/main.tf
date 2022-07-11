#### Resource Block ####
# local_file はタイプ名. 今回はローカルでの作業のため、local_fileを選択している. awsのリソースを操作する場合は aws_instance などを指定する必要がある.
# → URL: https://www.terraform.io/language/resources/syntax
# basic_hello は任意の名前.
########################
resource "local_file" "basic_hello" {
    content = "hello world!"
    filename = "output_hello.txt"
}

#### Output ####
# $ terraform plan を実行した際に出力される.
# 
#
# Terraform will perform the following actions:

#   # local_file.basic_hello will be created
#   + resource "local_file" "basic_hello" {
#       + content              = "hello world!"
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "output_hello.txt"
#       + id                   = (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.