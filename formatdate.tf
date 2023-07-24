locals {
  formatdate_var = timestamp()
}

output "formatdate_year" {
  value = formatdate("YYYY", local.formatdate_var)
}

output "formatdate_month" {
  value = formatdate("MM", local.formatdate_var)
}

output "formatdate_day" {
  value = formatdate("DD", local.formatdate_var)
}
