#!/bin/sh

# Crea el archivo index.html basado en la plantilla
echo "Generando index.html para el servidor ${SERVER_NAME} con la IP ${SERVER_IP}"
envsubst '${SERVER_NAME},${SERVER_IP}' < /usr/share/nginx/html/index.template.html > /usr/share/nginx/html/index.html
