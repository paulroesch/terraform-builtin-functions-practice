locals {
  texttolower = "THIS WAS AN UPPER CASE TEXT LINE. NOW IT'S LOWERED."
}

output "tolower_conv" {
  value = lower(local.texttolower)
}
