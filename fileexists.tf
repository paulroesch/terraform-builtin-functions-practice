locals {
  filepath_var = ".gitignore"
}

output "filepath_exists_check" {
  value = fileexists(local.filepath_var)
}
