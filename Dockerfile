FROM jenkins/jenkins:2.516.1-jdk17
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
USER jenkins
RUN jenkins-plugin-cli --plugins "blueocean:1.27.21 docker-workflow"