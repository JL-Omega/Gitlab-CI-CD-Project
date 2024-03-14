# Specify the base image, in this case Ubuntu 22.04
FROM ubuntu:22.04

# Set the maintainer information as a label
LABEL maintainer="Jean-Luc Mpande <mpandejl1@gmail.com>"

# Copy the contents of the local 'src' directory to '/var/www/html' in the container
ADD src /var/www/html

# Update package lists and install Nginx
RUN apt update -y && apt install nginx -y

# Expose port 80 to allow external connections to Nginx
EXPOSE 80

# Set the default command to start Nginx with daemon off
CMD [ "nginx", "-g", "daemon off;" ]