FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y && apt-get install openssh-server -y 
RUN useradd --create-home --password $(echo "s3cr3t" | openssl passwd -1 -stdin) ndphu && echo "ndphu ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && service ssh start
#RUN ["echo", "ndphu ALL=(ALL) NOPASSWD:ALL", ">>", "/etc/sudoers"]
#ENTRYPOINT ["service", "ssh", "start"]
RUN service ssh start
EXPOSE 22
#CMD ["bash"]
#CMD ["bash"]
#ENTRYPOINT ["service", "ssh", "start"]
ENTRYPOINT service ssh start && bash

