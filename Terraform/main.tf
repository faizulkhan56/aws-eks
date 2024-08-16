module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "0.0.7"

  region               = "us-east-1"
  cluster_version      = "1.27"
  cluster_name         = "my_eks_cluster"
  instance_types       = ["t2.small"]
  vpc_cidr             = "10.0.0.0/16"
  cluster_min_size     = 1
  cluster_max_size     = 1
  cluster_desired_size = 1
}