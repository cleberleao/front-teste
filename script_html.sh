#!/bin/bash
sudo podman stop front-teste-cleber
sudo podman rm front-teste-cleber
cd /home/opc/projeto
sudo rm -rf front-teste
git clone https://github.com/cleberleao/front-teste.git
cd /home/opc/projeto/front-teste
sudo podman build -t front-teste-cleber .
sleep 10
sudo podman run --name front-teste-cleber -d -p 8080:80 front-teste-cleber
