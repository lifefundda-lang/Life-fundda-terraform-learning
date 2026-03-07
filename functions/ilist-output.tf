output "emp" {
  value = "employee of year is ${join("-->", var.emp_name)}"
}

output "upper" {
  value = "employee of upper rank is ${upper(var.emp_name[0])}"
}
output "Lower" {
  value = "employee of Lower rank is ${lower(var.emp_name[1])}"
}
output "title" {
  value = "employee of title rank is ${title(var.emp_name[2])}"
}