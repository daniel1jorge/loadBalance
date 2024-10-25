FROM nginx:alpine

# Copia la plantilla HTML y el script en el contenedor
COPY index.template.html /usr/share/nginx/html/
COPY reutilizado.html /usr/share/nginx/html/
COPY generate-index.sh /usr/share/nginx/html/

# Asegúrate de que el script sea ejecutable
RUN chmod +x /usr/share/nginx/html/generate-index.sh

# Ejecutar el script en tiempo de ejecución cuando inicie el contenedor
# CMD lo ejecutará al iniciar el contenedor, después se ejecutará nginx
CMD ["/bin/sh", "-c", "/usr/share/nginx/html/generate-index.sh && nginx -g 'daemon off;'"]