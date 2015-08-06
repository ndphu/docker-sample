FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y 
RUN apt-get install openssh-server -y 
RUN useradd --create-home --password $(echo "s3cr3t" | openssl passwd -1 -stdin) ndphu && echo "ndphu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && service ssh start
EXPOSE 22
ENTRYPOINT service ssh start && bash

