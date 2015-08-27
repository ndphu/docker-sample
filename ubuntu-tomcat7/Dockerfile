FROM ndphu/ubuntu-ssh
# Add JDK and Tomcat
ADD files/apache-tomcat-8.0.24.tar.gz /opt
ADD files/jdk1.8.0_51.gz /opt

# Export JAVAHOME
ENV JAVA_HOME=/opt/jdk1.8.0_51

# Override supervisord.conf to bringup Tomcat
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 8080

