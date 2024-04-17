# Usando a imagem oficial do Nginx como base
FROM nginx

# Adcionando metadados na Imagem através do LABEL
LABEL image="dockerfile-test" author="GEdO23" version="1.0.0" description="" email="rm99632@fiap.com.br"

#! TA AQUI O PROBLEMA
# Comandos para atualizar o Linux, bem como as ferramentas Curl e vim
RUN apt-get update
RUN apt-get install -y curl && apt-get install -y vim

# Criando um usuário Linux na Imagem e definindo Default
RUN useradd -ms /bin/bash RM99632\
    USER RM99632\
    WORKDIR /usr/share/nginx/html

# Copiando os arquivos da página web estática para o diretório padrão do Nginx
COPY . /usr/share/nginx/html/

# Expondo a porta padrão HTTP 8080
EXPOSE 8080
