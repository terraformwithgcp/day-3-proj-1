variable "project-id" {
    type = string
    default = "terracloudlabs91"
  
}
variable "region" {
    type = string
    default = "us-central1"
  
}
variable "vm-name" {
    type = string
    default = "my-vm1"  
}
variable "vm-type" {
    type = string
    default = "e2-medium"
  
}
variable "vm-zone" {
    type = string
    default = "us-central1-a"
  
}
variable "os-name" {
    type = string
    default = "debian-cloud/debian-11"
  
}
variable "network-name" {
    type = string
    default = "default"
  
}