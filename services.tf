data "template_file" "jenkins_task_template" {
  template = "${file("templates/jenkins.json.tpl")}"

  vars {
    jenkins_repository = "${module.docker.repository_url}"
  }
}

resource "aws_ecs_task_definition" "jenkins" {
  family                = "jenkins"
  container_definitions = "${data.template_file.jenkins_task_template.rendered}"

  volume {
    name      = "jenkins-home"
    host_path = "/ecs/jenkins-home"
  }

  volume {
    name      = "docker_sock"
    host_path = "/var/run/docker.sock"
  }

  volume {
    name      = "proc"
    host_path = "/proc/"
  }

  volume {
    name      = "cgroup"
    host_path = "/cgroup/"
  }
}

resource "aws_ecs_service" "jenkins" {
  name            = "jenkins"
  cluster         = "${aws_ecs_cluster.jenkins.id}"
  task_definition = "${aws_ecs_task_definition.jenkins.arn}"
  desired_count   = "${var.desired_service_count}"
  depends_on      = ["aws_autoscaling_group.asg_jenkins"]
}
