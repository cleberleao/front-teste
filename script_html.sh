#!/bin/bash
cd /home/opc/projeto
sudo rm -rf front-teste
git clone https://github.com/cleberleao/front-teste.git
cd /home/opc/projeto/front-teste
sudo podman build -t minha-pagina-apache .
sleep 10
sudo podman run --name front-teste -d -p 8080:80 front-teste
