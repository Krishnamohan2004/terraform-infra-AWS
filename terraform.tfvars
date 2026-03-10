region = "ap-south-1"

vpc_name = "deployment-vpc"
vpc_cidr = "10.0.0.0/16"

subnet_name = "deployment-subnet"
subnet_cidr = "10.0.1.0/24"

az = "ap-south-1a"

ecr_name = "devops-ecr-repo"

eks_name = "devops-eks-cluster"

node_count = 1
instance_type = "t2.large"

eks_role_arn = "arn:aws:iam::141964413005:role/EKSClusterRole"
node_role_arn = "arn:aws:iam::141964413005:role/EKSNodeRole"
