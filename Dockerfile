#Base image
FROM amazonlinux:2023

#Install apache server(httpd)
RUN yum update -y
RUN yum install httpd -y

#Copy index to deployment path
COPY . /var/www/html/

#Expose port
EXPOSE 99

#Run application
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
