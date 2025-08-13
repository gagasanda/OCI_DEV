resource "oci_core_instance" "example_instance" {
  availability_domain = var.availability_domain
  compartment_id     = var.compartment_id
  display_name       = var.instance_name
  shape              = var.shape

  create_vnic_details {
    subnet_id = var.subnet_id

    assign_public_ip = var.assign_public_ip
  }

  source_details {
    source_type = "image"
    source_id   = var.image_id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }
}