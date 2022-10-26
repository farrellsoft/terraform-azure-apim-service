
variable resource_group_name {
  type      = string
}

variable appName {
  type      = string
}

variable suffix {
  type      = string
  default   = ""
}

variable skuInfo {
  type      = object({
    name = string
    units = optional(number)
  })
}

variable publisherInfo {
  type      = object({
    name    = string
    email   = string
  })
}