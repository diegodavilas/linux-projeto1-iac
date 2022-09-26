#!/bin/bash
echo "CRIANDO DIRETÓRIOS"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "CRIANDO GRUPOS"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "DEFININIDO USUÁRIO PROPRIETÁRIO E GRUPO DOS DIRETÓRIOS"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "DEFININDO PERMIÇÕES"
chmod 777 /publico
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
echo "CRIANDO USUÁRIOS"
useradd carlos -m -c "Carlos ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -c "Maria ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -c "João ADM" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd debora -m -c "Debora VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -c "Roberto VEN" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd josefina -m -c "Josefina SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -c "Amanda SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério SEC" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC1
