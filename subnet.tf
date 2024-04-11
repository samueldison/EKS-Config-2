resource "aws_subnet" "pub_sub1" {
  cidr_block              = var.pub_sub1_cidr
  availability_zone       = var.av_zone-1
  map_public_ip_on_launch = "true"
  vpc_id                  = aws_vpc.vpc.id
  tags = {
    "alpha.eksctl.io/cluster-name" = "demo-eks-01"
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

resource "aws_subnet" "pub_sub2" {
  cidr_block              = var.pub_sub2_cidr
  availability_zone       = var.av_zone-2
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = "true"
  tags = {
    "alpha.eksctl.io/cluster-name" = "demo-eks-01"
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

resource "aws_subnet" "priv_sub1" {
  cidr_block        = var.priv_sub1_cidr
  availability_zone = var.av_zone-2
  vpc_id            = aws_vpc.vpc.id
  tags = {
    "alpha.eksctl.io/cluster-name" = "demo-eks-01"
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}

resource "aws_subnet" "priv_sub2" {
  cidr_block        = var.priv_sub2_cidr
  availability_zone = var.av_zone-2
  vpc_id            = aws_vpc.vpc.id
  tags = {
    "alpha.eksctl.io/cluster-name" = "demo-eks-01" 
    "kubernetes.io/cluster/var.cluster_name" = "shared"
  }
}