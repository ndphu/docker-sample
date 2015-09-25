FROM centos:6
MAINTAINER phudnguyen@kms-technology.com

# Upgrade
RUN yum update -y

# Install packages
RUN yum install -y openssh-server python-setuptools && easy_install supervisor

# Config supervisor
RUN mkdir -p /var/run/sshd /var/log/supervisor
# Copy the supervisor config file
COPY supervisord.conf /etc/supervisord.conf

# Copy the public key
COPY id_rsa.pub /tmp/id_rsa.pub
# Import the key
RUN mkdir -p /root/.ssh && cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys && rm -f /tmp/id_rsa.pub
# Allow root remote login
RUN sed -i "/PermitRootLogin without-password/d" /etc/ssh/sshd_config && echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && service sshd restart

EXPOSE 22

CMD ["/usr/bin/supervisord"]

