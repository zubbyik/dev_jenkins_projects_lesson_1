FROM jenkins/jenkins:lts-jdk11
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN echo "This is Jenkins Home: ${JENKINS_HOME}"
RUN jenkins-plugin-cli \
    --plugins \
    docker-plugin:1.3.0 \
    github:1.37.0 \
    blueocean-dashboard:1.27.2 \
    docker-compose-build-step:1.0