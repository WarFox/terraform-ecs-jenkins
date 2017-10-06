provider "aws" {
  region = "${var.region}"
}

resource "aws_ecr_repository" "jenkins" {
  name = "${var.jenkins_image_name}"

  provisioner "local-exec" {
    command = "./docker/deploy-image.sh ${self.repository_url} ${var.jenkins_image_name} ${var.region}"
  }
}

output "repository_url" {
  value = "${aws_ecr_repository.jenkins.repository_url}"
}
