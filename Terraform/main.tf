terraform {
  backend "s3" {
    bucket = "terraform-bucket20240816"  # Replace with your S3 bucket name
    key    = "backstage-eks-aws/terraform.tfstate"  # The path to your state file within the bucket
    region = "us-east-1"  # The AWS region where your S3 bucket is located
  }
}

module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  

  region               = "us-east-1"
  cluster_version      = "1.27"
  cluster_name         = "my_eks_cluster"
  instance_types       = ["t2.small"]
  vpc_cidr             = "10.0.0.0/16"
  cluster_min_size     = 1
  cluster_max_size     = 1
  cluster_desired_size = 1
}
