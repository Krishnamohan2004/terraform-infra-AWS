output "vpc_id" {
  value = aws_vpc.deploy_vpc.id
}

output "subnet_ids" {
  value = [
    aws_subnet.subnet1.id,
    aws_subnet.subnet2.id
  ]
}

output "eks_cluster_name" {
  value = aws_eks_cluster.eks.name
}

output "ecr_repo_url" {
  value = aws_ecr_repository.ecr.repository_url
}
