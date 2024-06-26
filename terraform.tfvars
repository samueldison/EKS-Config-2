region         = "us-east-1"
eks_version    = "1.29"
av_zone-1      = "us-east-1a"
av_zone-2      = "us-east-1b"
vpc_cidr       = "192.167.0.0/16"
pub_sub1_cidr  = "192.167.32.0/24"
pub_sub2_cidr  = "192.167.48.0/24"
priv_sub1_cidr = "192.167.62.0/24"
priv_sub2_cidr = "192.167.78.0/24"
ec2_ssh_key    = "xxxxxx" 
disk_size      = "30"
instance_types = ["t3.medium"]
cluster_name   = "demo-eks-01"
enable_oidc    = true
