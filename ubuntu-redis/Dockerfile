FROM ndphu/ubuntu-ssh
EXPOSE 6379
EXPOSE 22
RUN apt-get install redis-server -y
ADD redis.conf /etc/redis/redis.conf
ENTRYPOINT service ssh start && service redis-server start && bash

