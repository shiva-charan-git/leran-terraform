variable "sample" {
  default = "hello World"
}

output "sample" {
 value = var.sample  
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}