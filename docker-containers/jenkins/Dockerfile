FROM jenkins/jenkins:lts
USER root
RUN curl -fsSL https://get.docker.com | sh
RUN curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
RUN usermod -aG docker jenkins
USER jenkins
