#!/bin/bash

echo "Início, criação de diretórios, grupos e usuários...."
echo " "

# Criação de diretórios
mkdir -v /publico /adm /ven /sec

# Crianção de grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Configurando permissões dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Criação de usuários associando aos grupos
useradd carlos -c "Carlos Auguto" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
passwd  carlos -e

useradd maria -c "Maria Auguta" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
passwd  maria -e

useradd joao -c "João Carlos" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_ADM
passwd  joao -e

useradd debora -c "Debora Fonseca" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd  debora -e

useradd sebastiana -c "Sebastiana de Lourdes" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd  sebastiana -e

useradd roberto -c "Roberto Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_VEN
passwd  roberto -e

useradd josefina -c "Josefina Maria" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd  josefina -e

useradd amanda -c "Amanda Rodrigues" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd  amanda -e

useradd rogerio -c "Rogerio Almeida" -m -s /bin/bash -p $(openssl passwd Senha123) -g GRP_SEC
passwd  rogerio -e

echo " "
echo "Finalizado criação...!!!"
