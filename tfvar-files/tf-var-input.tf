variable emp-id {
    type = number
  
}
variable empname {
  type = string
}

output "employee" {
  value = "Hello ${var.empname} your employee id is ${var.emp-id}"
}