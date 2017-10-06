You have to run

docker exec -it --user=root container_name /bin/sh -c "chgrp jenkins /var/run/docker.sock"

To get the initialPassword

1. ssh into instance
ssh -i "devops-tf.pem" ec2-user@instan.aws.com
2. run `docker exec -it 7a5a4414a957 /bin/sh`
3. and `cat /var/jenkins_home/secrets/initialAdminPassword`
