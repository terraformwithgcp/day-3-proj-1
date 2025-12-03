variable "list1" {
    type = list(string)
    default = ["val1", "val2", "val3", "val1"]
  
}
output "list1-data" {
    value = var.list1[0]
  
}

variable "set1" {
    type = set(string)
    default = ["sval1", "sval2", "sval3","sval1"]
}
output "set1-data" {
    # value = tolist(var.set1)[0]
    value = var.set1
  
}


variable "tup1" {
    type = tuple([string, number, bool])
    default = ["tval1", 100, true]
}
output "tup1-val1" {
    value = var.tup1[0]
  
}

variable "map1" {
    type = map(string)
    default = {
        key1 = "mval1"
        key2 = "mval2"
        key3 = "mval3"
    }
  
}
output "map1-values" {
    value = var.map1["key2"]
  
}