FROM ubuntu:24.04

RUN apt update && \
  apt install nginx -y && \
  apt install git -y && \
  rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/AlexRL0/Practica-IAW-MkDocs.git /app && \
    mv /app/site/* /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]