variable content {
    default = "input variables default value."
}
variable filename {
    default = "input.txt"
}

resource "local_file" "input_value" {
    content     = var.content
    filename    = var.filename
}