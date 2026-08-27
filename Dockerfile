# Imagem base leve com Nginx para servir arquivos estáticos
FROM nginx:alpine

# Remove o conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do site para a pasta servida pelo Nginx
COPY . /usr/share/nginx/html

# Porta padrão do Nginx
EXPOSE 80

# Comando padrão da imagem base já inicia o Nginx em foreground
CMD ["nginx", "-g", "daemon off;"]
