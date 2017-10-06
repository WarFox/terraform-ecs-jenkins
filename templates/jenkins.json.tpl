[{
    "name": "jenkins",
    "image": "${jenkins_repository}",
    "cpu": 128,
    "memory": 1024,
    "essential": true,
    "portMappings": [{
            "containerPort": 8080,
            "hostPort": 80
        },
        {
            "containerPort": 50000,
            "hostPort": 50000
        }
    ],
    "mountPoints": [{
            "sourceVolume": "jenkins-home",
            "containerPath": "/var/jenkins_home"
        },
        {
            "containerPath": "/var/run/docker.sock",
            "sourceVolume": "docker_sock",
            "readOnly": false
        },
        {
            "containerPath": "/host/sys/fs/cgroup",
            "sourceVolume": "cgroup",
            "readOnly": true
        },
        {
            "containerPath": "/host/proc",
            "sourceVolume": "proc",
            "readOnly": true
        }
    ]
}]
