# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Expone el puerto 5678
EXPOSE 5678

# Variables de entorno para autenticación básica
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=TuContraseñaSegura123!

# Configuración para que funcione detrás del proxy de Render
ENV N8N_HOST=${RENDER_SERVICE_NAME}.onrender.com
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://${RENDER_SERVICE_NAME}.onrender.com/

# Tamaño de memoria para Node.js
ENV NODE_OPTIONS=--max-old-space-size=384

# Comando para iniciar n8n
CMD ["n8n"]
