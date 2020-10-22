variable "region" {
  default = "eu-west-2"
}

variable "control_ami" {
  default = "ami-037b40f81b6a9f3ee"
}

variable "ami" {
  default = "ami-05c424d59413a2876"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "web_servers" {
  type = list(string)
  default = [
    "ansible-web-server-1",
    "ansible-web-server-2",
    "ansible-web-server-3"
  ]
}
variable "key_name" {
  default = "tf-22102020"
}