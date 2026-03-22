output "testing-file" {
  value = file("${path.module}/file.txt")
}