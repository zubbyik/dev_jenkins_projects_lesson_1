FROM jenkins/jenkins:lts-jdk11
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN echo "This is Jenkins Home: ${JENKINS_HOME}"
RUN jenkins-plugin-cli \
    --plugins \
    docker-plugin \
    github \
    blueocean-dashboard \
    docker-compose-build-step