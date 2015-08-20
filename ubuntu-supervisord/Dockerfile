FROM ubuntu:14.04
MAINTAINER phudnguyen@kms-technology.com

# Upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install packages
RUN apt-get install -y openssh-server supervisor

# Config supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor
# Copy the supervisor config file
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Copy the public key
COPY id_rsa.pub /tmp/id_rsa.pub
# Import the key
RUN mkdir -p /root/.ssh && cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys && rm -f /tmp/id_rsa.pub
# Allow root remote login
RUN sed -i "/PermitRootLogin without-password/d" /etc/ssh/sshd_config && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && service ssh reload

EXPOSE 22

CMD ["/usr/bin/supervisord"]

