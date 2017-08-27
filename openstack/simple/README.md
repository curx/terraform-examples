# OpenStack Simple

Demostration of booting an Nova Instance on an OpenStack Provider with
terraform.

  * Upload an OpenStack Glance Image from the latest [RancherOS](https://github.com/rancher/os) Image
  * Create OpenStack ssh keypairs, security group, network, router and assign
    an floating ip for the nova instance
  * Boot the nova instance, provision the virtual machine and start an nginx
    docker container inside rancheros

# Step(s)

```
# include the OpenStack credentials in your shell environment
$ source <path/to/openrc-file>

# create ssh terraform ssh-keys, with no password protection of the private key
$ ssh-keygen -f terraform

# download the last provisoner tool set, like openstack and null resource
$ terraform init

# show the current plan
$ terraform plan

# do the job and build up
$ terraform apply

# get the output from the docker container provisioned by terraform
$ curl $(terraform output address)
```
