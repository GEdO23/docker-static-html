# Usando a imagem oficial do Nginx como base
FROM nginx

# Comandos para atualizar o Linux, bem como as ferramentas Curl e vim
RUN apt-get update && apt-get install -y curl && apt-get install -y vim

WORKDIR /meu-site

# Copiando os arquivos da página web estática para o diretório padrão do Nginx
COPY /meu-site/CSS /usr/share/nginx/html/CSS
COPY /meu-site/IMGS /usr/share/nginx/html/IMGS
COPY /meu-site/index.html /usr/share/nginx/html/index.html

# Adcionando metadados na Imagem através do LABEL
LABEL Image="Imagem Docker para um projeto web com páginas estáticas" \
    Author="GEdO23" \
    Version="1.0.0" \
    Description="Projeto CP2 de DevOps da turma 2TDSPG 2024 - RM99632" \
    E-mail="gabrieleringerdeoliveira1234@gmail.com"

# Expondo a porta padrão HTTP 8080
EXPOSE 8080
