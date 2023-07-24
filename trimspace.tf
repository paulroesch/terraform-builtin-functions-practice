locals {
  trim_var = "     This is a text with 2 new lines afterwards and whitespaces before and after.\n\n"
}

output "trimmed_text" {
  value = trimspace(local.trim_var)
}
