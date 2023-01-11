# Some invalid HCL in here
variable "invalid-${this_function_does_not_exist()}" {
    type = string
}
