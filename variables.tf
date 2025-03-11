variable "secret_name" {
  type = string
}

variable "secret_value_init_keys" {
  type    = list(string)
  default = []
}
