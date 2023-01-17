# Set group vars path relative to current file
group_vars_path = "~/dev/purdue/rcac/p1/iguide-kubespray/inventory/dev/group_vars"

# your Kubernetes cluster name here
cluster_name = "iguide-ci-dev"

# list of availability zones available in your OpenStack cluster
#az_list = ["nova"]

# SSH key to use for access to nodes
public_key_path = "~/.ssh/id_rsa.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Featured-Ubuntu20"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
/* ssh_user = "<cloud-provisioned user>" */

# 0|1 bastion nodes
number_of_bastions = 1

flavor_bastion = "2"

# standalone etcds
number_of_etcd = 0

# masters
number_of_k8s_masters = 0

number_of_k8s_masters_no_etcd = 0

number_of_k8s_masters_no_floating_ip = 1

number_of_k8s_masters_no_floating_ip_no_etcd = 0

flavor_k8s_master = "2"

k8s_masters = {
  /* "master-1" = { */
  /*   "az"          = "nova" */
  /*   "flavor"      = "2" */
  /*   "floating_ip" = false */
  /*   "etcd"        = true */
  /* }, */
  # "master-2" = {
  #   "az"          = "nova"
  #   "flavor"      = "<UUID>"
  #   "floating_ip" = false
  #   "etcd" = true
  # },
  # "master-3" = {
  #   "az"          = "nova"
  #   "flavor"      = "<UUID>"
  #   "floating_ip" = true
  #   "etcd" = true
  # },
}

# nodes
number_of_k8s_nodes = 0

number_of_k8s_nodes_no_floating_ip = 2

flavor_k8s_node = "2"

k8s_nodes = {
  /* "node-1" = { */
  /*   "az"          = "nova" */
  /*   "flavor"      = "2" */
  /*   "floating_ip" = false */
  /* }, */
  # "node-2" = {
  #   "az"          = "nova"
  #   "flavor"      = "<UUID>"
  #   "floating_ip" = false
  # },
  # "node-3" = {
  #   "az"          = "nova"
  #   "flavor"      = "<UUID>"
  #   "floating_ip" = true
  # },
}


# GlusterFS
# either 0 or more than one
number_of_gfs_nodes_no_floating_ip = 2
gfs_volume_size_in_gb              = 150
# Container Linux does not support GlusterFS
image_gfs = "Featured-Ubuntu20"
# May be different from other nodes
ssh_user_gfs    = "ubuntu"
flavor_gfs_node = "2"

# networking
network_name = "iguide-ci-dev"

# Use a existing network with the name of network_name. Set to false to create a network with name of network_name.
use_existing_network = false

external_net = "3fe22c05-6206-4db2-9a13-44f04b6796e6" // UUID of `public` network

subnet_cidr = "10.0.10.0/24"

router_id = "0bdae695-d784-40b8-9e0b-ad2733761164"

floatingip_pool = "public"

bastion_allowed_remote_ips = ["0.0.0.0/0"]

# Force port security to be null. Some cloud providers do not allow to set port security.
# force_null_port_security = false
