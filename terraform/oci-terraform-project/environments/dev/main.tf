resource "oci_identity_compartment" "dev_compartment" {
  compartment_id = var.root_compartment_id
  name           = "dev-compartment"
  description    = "Development compartment"
}

resource "oci_core_virtual_network" "dev_vcn" {
  compartment_id = oci_identity_compartment.dev_compartment.id
  display_name   = "dev-vcn"
  cidr_block     = var.vcn_cidr_block
}

resource "oci_core_subnet" "dev_subnet" {
  compartment_id      = oci_identity_compartment.dev_compartment.id
  virtual_network_id  = oci_core_virtual_network.dev_vcn.id
  display_name        = "dev-subnet"
  cidr_block          = var.subnet_cidr_block
  availability_domain = var.availability_domain
}

resource "oci_core_instance" "dev_instance" {
  count               = var.instance_count
  availability_domain = var.availability_domain
  compartment_id      = oci_identity_compartment.dev_compartment.id
  display_name        = "dev-instance-${count.index}"
  shape              = var.instance_shape

  create_vnic_details {
    subnet_id = oci_core_subnet.dev_subnet.id
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
  }
}