# Usando a imagem oficial do Nginx como base
FROM nginx:latest

# Comandos para atualizar o Linux, bem como as ferramentas Curl e vim
RUN apt-get -y update && apt-get -y install curl && apt-get -y install vim

# Copiando os arquivos da página web estática para o diretório padrão do Nginx
COPY meu-site .

# Adcionando metadados na Imagem através do LABEL
LABEL image="dockerfile-test" author="GEdO23" version="1.0.0" description="" email="rm99632@fiap.com.br"

# Expondo a porta padrão HTTP 8080
EXPOSE 8080

# Criando um usuário Linux na Imagem e definindo Default
RUN useradd -ms /bin/bash RM99632
USER RM99632
WORKDIR /home/RM99632
