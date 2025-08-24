FROM jenkins/jenkins:2.516.1-jdk17
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
# Ensure the /home/jenkins directory exists
RUN mkdir -p /home/jenkins && chown -R jenkins:jenkins /home/jenkins

USER jenkins