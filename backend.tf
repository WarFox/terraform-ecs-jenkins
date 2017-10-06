# This bucket must be available already
## terraform.backend resource doesn't allow interpolation
terraform {
  backend "s3" {
    bucket = "mycompany-terraform"

    key    = "jenkins/terraform.tfstate"
    region = "eu-west-1"
  }
}
