variable "empname" {
  type = string
}
output "print" {
  value = "Hello ${var.empname}"
}