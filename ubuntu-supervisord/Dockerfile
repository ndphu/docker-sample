FROM ubuntu:14.04
MAINTAINER phudnguyen@kms-technology.com

# Upgrade
RUN apt-get update -y && apt-get upgrade -y

# Install packages
RUN apt-get install -y openssh-server supervisor

RUN mkdir -p /var/run/sshd /var/log/supervisor

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22

CMD ["/usr/bin/supervisord"]

