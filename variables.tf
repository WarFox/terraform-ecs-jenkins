variable "access_key" {
  description = "The AWS access key."
}

variable "secret_key" {
  description = "The AWS secret key."
}

variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-1"
}

variable "availability_zone_1" {
  description = "The availability zone"
  default     = "eu-west-1a"
}

variable "availability_zone_2" {
  description = "The availability zone"
  default     = "eu-west-1b"
}

variable "ecs_cluster_name" {
  description = "The name of the Amazon ECS cluster."
  default     = "jenkins"
}

variable "amis" {
  description = "Which AMI to spawn. Defaults to the AWS ECS optimized images."

  default = {
    us-east-1      = "ami-9eb4b1e5"
    us-west-2      = "ami-1d668865"
    us-west-1      = "ami-4a2c192a"
    eu-west-2      = "ami-cb1101af"
    eu-west-1      = "ami-8fcc32f6"
    eu-central-1   = "ami-0460cb6b"
    ap-northeast-1 = "ami-b743bed1"
    ap-southeast-2 = "ami-c1a6bda2"
    ap-southeast-1 = "ami-9d1f7efe"
    ca-central-1   = "ami-b677c9d2"
  }
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  description = "SSH key name in your AWS account for AWS instances."
}

variable "min_instance_size" {
  default     = 1
  description = "Minimum number of EC2 instances."
}

variable "max_instance_size" {
  default     = 2
  description = "Maximum number of EC2 instances."
}

variable "desired_instance_capacity" {
  default     = 1
  description = "Desired number of EC2 instances."
}

variable "desired_service_count" {
  default     = 1
  description = "Desired number of ECS services."
}

variable "terraform_bucket" {
  description = "S3 bucket where remote state and Jenkins data will be stored."
}

variable "restore_backup" {
  default     = false
  description = "Whether or not to restore Jenkins backup."
}

variable "jenkins_image_name" {
  default     = "devops/jenkins"
  description = "Jenkins image name."
}
