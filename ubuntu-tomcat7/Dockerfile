FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install openssh-server -y 
RUN apt-get install openjdk-7-jre -y
RUN useradd --create-home --password $(echo "s3cr3t" | openssl passwd -1 -stdin) ndphu && echo "ndphu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && service ssh start
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 22
EXPOSE 8080
ADD apache-tomcat-7.0.63.tar.gz /opt
ADD webservice.war /opt/apache-tomcat-7.0.63/webapps/
ENTRYPOINT service ssh start && /opt/apache-tomcat-7.0.63/bin/startup.sh && bash

