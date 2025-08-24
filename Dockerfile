FROM jenkins/jenkins:2.516.1-jdk17
USER root
RUN apk add python3
RUN apk add py3-pip
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.27.21 docker-workflow"