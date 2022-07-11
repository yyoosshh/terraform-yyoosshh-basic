
#### Local Variables ####
# locals セクション内で複数の変数を定義可能
# 1〜n の変数をまとめて定義することが可能
# 
locals {
  content = "local values"
  filename = "local.txt"
}

#### Resource Block ####
# local変数の参照については "local" を使用
# local.content は "local values", local.filename は "local.txt" を表す
# 
resource "local_file" "local_value" {
    content = local.content
    filename = local.filename
}
#### Output ####
# $ terraform plan を実行した際に出力される.
# 
# Terraform will perform the following actions:
#   # local_file.basic_hello will be created
#   + resource "local_file" "local_value" {
#       + content              = "local values"
#       + directory_permission = "0777"
#       + file_permission      = "0777"
#       + filename             = "local.txt"
#       + id                   = (known after apply)
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.
