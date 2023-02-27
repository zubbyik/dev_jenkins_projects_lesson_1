FROM jenkins/jenkins:lts-jdk11
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN echo "This is Jenkins Home: ${JENKINS_HOME}"
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt -d ${JENKINS_HOME}/plugins