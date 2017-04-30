# Use an official image of centos
FROM centos:latest

# maintainer
LABEL maintainer "rabahi"

# listen port at runtime
EXPOSE 80

# Install packages
RUN yum -y install httpd \
    && yum clean all

# mount point
VOLUME ["/etc/httpd/conf.d" , "/var/www/html"]

# Run catalina.sh when container launches
CMD ["/usr/sbin/httpd" , "-DFOREGROUND"]