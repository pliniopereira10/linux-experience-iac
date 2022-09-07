#!/bin/bash

echo "Atualizando Servidor Web"

apt update && apt upgrade -y

echo "Instalando Apache"

apt install apache2 -y

echo "Instalando Unzip"

apt install unzip -y

echo "Download de aplicação no GitHub"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos"

unzip /tmp/main.zip -d /tmp

echo "Copiando arquivos para diretório padrão apache"

cp -R /tmp/linux-site-dio-main/* /var/www/html/
