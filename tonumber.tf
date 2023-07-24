locals {
  stringtonumber_var = "82938"
}

output "tonumber_conv" {
  value = tonumber(local.stringtonumber_var)
}
