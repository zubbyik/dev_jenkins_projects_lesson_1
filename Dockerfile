FROM jenkins/jenkins:lts-jdk11
# COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN echo "This is Jenkins Home: ${JENKINS_HOME}"
RUN jenkins-plugin-cli --plugins docker-plugin github blueocean \
    docker-compose-build-step -d $JENKINS_HOME/plugins
