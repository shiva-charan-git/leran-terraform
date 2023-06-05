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


variable "cli" {}

output "cli" {
  value = var.cli
}

variable "sample5" {
  default = "Hello"
}

variable "sample6" {
  default = [
    "Hello",
    1000,
    true,
    "world"
  ]
  
}

variable "sample7" {
  default = {
    string = "Hello"
    number = 100,
    boolean = true
  }
  
}

output "types" {

  value = "variable sample5 is ${var.sample5}, first valiue of list is ${var.sample6[0]}, boolean value is ${var.smaple7[boolean]}"
  
}