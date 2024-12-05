variable "instances" {
  type = map(any)
  default = {
    mongodb   = "t2.micro"
    redis     = "t2.micro"
    mysql     = "t2.micro"
    rabbitmq  = "t2.micro"
    catalogue = "t2.micro"
    user      = "t2.micro"
    cart      = "t2.micro"
    shipping  = "t2.micro"
    payment   = "t2.micro"
    dispatch  = "t2.micro"
    frontend  = "t2.micro"
  }
}

variable "allow_all" {
  type    = string
  default = "sg-0b764df7602aee442"
}

variable "zone_id" {
  default = "Z01812753Q5MT1AIWL2T5"
}

variable "domain_name" {
  default = "devops81s.shop"
}
