FROM jenkins/inbound-agent:latest-jdk17

USER root

# Install dependencies
RUN apt-get update && apt-get install -y lsb-release python3-pip

# Install Docker CLI
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg && \
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list && \
  apt-get update && apt-get install -y docker-ce-cli

# 🛠️ Ensure /home/jenkins exists and is correct
RUN mkdir -p /home/jenkins && chown -R jenkins:jenkins /home/jenkins

USER jenkins

# Install Jenkins plugins
RUN jenkins-plugin-cli --plugins "blueocean:1.27.21 docker-workflow"
