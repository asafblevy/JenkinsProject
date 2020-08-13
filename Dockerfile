#this is the base image we use to create our image from
FROM jenkins/jenkins:2.235.4-lts-alpine
 
#just info about who created this
MAINTAINER Asaf Levy (asafblevy@gmail.com)
 
#get rid of admin password setup
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
 
#automatically installing all plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
