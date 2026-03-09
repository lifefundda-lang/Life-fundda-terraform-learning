variable "userage" {
type= map(string)
default = {
  "hina" = "10"
  "simran" = "15"
  "khushi" = "20"
  "khushbu" = "25"
}
}
variable "username" {
  type = string
}
output "age" {
  value = "The age of ${var.username} is ${lookup(var.userage, var.username)}"
}