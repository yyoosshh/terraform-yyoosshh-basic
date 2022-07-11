variable "content" {}
variable "filename" {}

resource "local_file" "make_file" {
    content = var.content
    filename = var.filename
}

output "debug_print" {
    value = "${var.content} to ${var.filename}"
}