locals {
  url_search_var = "terraform functions"
}

output "url_toencode" {
  value = "https://duckduckgo.com/?t=lm&q=${urlencode(local.url_search_var)}&ia=web"
}
