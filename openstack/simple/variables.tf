variable "project_network_cidr" {
  default = "10.0.0.0/24"
}

variable "image_source_url" {
  default = "https://github.com/rancher/os/releases/download/v1.1.0/rancheros-openstack.img"
}

variable "image" {
  default = "rancheros-v1.1.0"
}

variable "flavor" {
  default = "Standard 1GB"
}

variable "ssh_key_file" {
  default = "./terraform"
}

variable "ssh_user_name" {
  default = "rancher"
}

variable "external_gateway" {
  default = "f9c73cd5-9e7b-4bfd-89eb-c2f4f584c326"
}

variable "pool" {
  default = "floating"
}
