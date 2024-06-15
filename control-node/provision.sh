#!/bin/bash

set -e  # Exit immediately if a command exits with a non-zero status

echo "Atualizando os pacotes..."
sudo apt-get update -y

echo "Instalando o Ansible..."
sudo apt-get install -y ansible

# Atualizar o arquivo /etc/hosts
echo "Atualizando o arquivo /etc/hosts..."
cat <<EOT | sudo tee -a /etc/hosts
192.168.56.2 control-node
192.168.56.3 app01
192.168.56.4 db01
EOT

echo "Provisão concluída com sucesso."