FROM ubuntu:latest

RUN apt-get update && apt-get update -y

RUN apt-get install nginx -y

COPY index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

