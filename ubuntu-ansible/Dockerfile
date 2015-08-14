FROM ndphu/ubuntu-ssh
RUN apt-get install ansible -y
# Add key-pair
COPY .ssh /root/.ssh
# Export port 22
EXPOSE 22
ENTRYPOINT service ssh start && bash

