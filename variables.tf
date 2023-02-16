variable "token" {
  type = string
}

variable "owner" {
  type = string
}

variable "team" {
  type = list(any)
}

variable "user" {
  type = map(object({
    name           = string
    team            = list(any)
  }))
}