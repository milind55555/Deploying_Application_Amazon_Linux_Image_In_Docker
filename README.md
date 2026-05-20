# Amazon Linux Apache Docker Project

This project demonstrates how to containerize a static web application using Docker with Amazon Linux and Apache HTTP Server (`httpd`).

---

# Project Overview

The application:
- Uses Amazon Linux as the base image
- Installs Apache HTTP Server
- Deploys a custom `index.html`
- Exposes the application on port 80
- Runs inside a Docker container

---

# Technologies Used

- Docker
- Amazon Linux 2023
- Apache HTTP Server (httpd)
- HTML

---

# Project Structure

project/
│
├── Dockerfile
└── index.html

---

# Dockerfile

```dockerfile
FROM amazonlinux:2023

RUN dnf update -y && \
    dnf install -y httpd && \
    dnf clean all

COPY index.html /var/www/html/index.html

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
