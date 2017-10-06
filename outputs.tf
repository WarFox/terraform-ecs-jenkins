output "public_dns_name" {
  value = "${data.aws_instance.jenkins_instance.public_dns}"
}

output "repository_url" {
  value = "${module.docker.repository_url}"
}
