# Usar la última versión de Ubuntu como base
FROM ubuntu:latest

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y nginx git && \
    rm -rf /var/lib/apt/lists/*

# Eliminar el contenido existente en /var/www/html/
RUN rm -rf /var/www/html/*
RUN rm -rf /tmp/*

# Clonar el repositorio de la aplicación web estática
RUN git clone https://github.com/AlexRL0/Practica-IAW-MkDocs.git /tmp

RUN cd /tmp && docker run --rm -it -u $(id -u):$(id -g) -v "$PWD":/docs squidfunk/mkdocs-material build

RUN cp /tmp/Practica-IAW-MkDocs/site/* /var/www/html/
# Exponer el puerto 80
EXPOSE 80

# Ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
