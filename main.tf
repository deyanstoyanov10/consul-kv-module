terraform {
    required_providers {
      consul = {
        source = "hashicorp/consul"
        version = "2.17.0"
      }
    }
}

resource "consul_keys" "this" {
    datacenter = "${var.datacenter}"

    key {
        path  = "${var.key_path}"
        value = "${var.key_value}"
    }
}