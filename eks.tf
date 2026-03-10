resource "aws_eks_cluster" "eks" {
  name     = var.eks_name
  role_arn = aws_iam_role.cluster_role.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.subnet1.id,
      aws_subnet.subnet2.id
    ]
  }

  depends_on = [
    aws_subnet.subnet1,
    aws_subnet.subnet2,
    aws_iam_role.cluster_role
  ]
}

resource "aws_eks_node_group" "node" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "dev-node-group"
  node_role_arn   = aws_iam_role.node_role.arn

  subnet_ids = [
    aws_subnet.subnet1.id,
    aws_subnet.subnet2.id
  ]

  scaling_config {
    desired_size = var.node_count
    max_size     = 2
    min_size     = 1
  }

  instance_types = [var.instance_type]

  depends_on = [
    aws_iam_role.node_role
  ]
}
