resource "null_resource" "provision" {
  depends_on = ["openstack_compute_floatingip_associate_v2.terraform"]

  connection {
    user        = "${var.ssh_user_name}"
    private_key = "${file(var.ssh_key_file)}"
    host        = "${openstack_networking_floatingip_v2.terraform.address}"
  }

  provisioner "remote-exec" {
    inline = [
      "docker run -tid -p 80:80 nginx:latest",
      "echo terraform-remote-exec executed > /tmp/terraform.state",
    ]
  }
}
