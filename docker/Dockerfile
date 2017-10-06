FROM jenkinsci/blueocean:1.2.4
LABEL maintainer="Deepu Mohan Puthrote git@deepumohan.com"
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
USER root
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
RUN touch /var/run/docker.sock
RUN chgrp jenkins /var/run/docker.sock
USER jenkins
