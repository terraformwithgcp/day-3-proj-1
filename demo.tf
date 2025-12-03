variable "var1" {
    type = string
    default = "def-value1"
  
}
output "value-of-var1" {
    value = var.var1
  
}