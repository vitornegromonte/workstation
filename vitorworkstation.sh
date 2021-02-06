#!/bin/bash

## Removendo travas do apt ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##
sudo apt update &&

##Pacotes do repositório deb do Ubuntu
sudo apt install python3 git build-essential libssl-dev ubuntu-make flatpak gnome-software-plugin-flatpak -y &&

## Instalando snap ##
sudo apt install snapd

## Instalando pacotes Snap ##
sudo snap install discord &&
echo "Discord instalado com sucesso"
sudo snap install code --classic &&
echo "Visual Studio Code instalado com sucesso"
sudo snap install --edge node --classic &&
sudo snap install spotify &&
echo "Spotify instalado com sucesso"
sudo snap install postman
echo "Postman instalado com sucesso"

## Adicionando repositório Flathub ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.comflatpakrepo &&

## Instalando Apps do Flathub ##
sudo flatpak install flathub com.obsproject.Studio -y &&

## Instalando Sublime Text 3 via pacote oficial
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && 
sudo apt-get install apt-transport-https && 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && 
sudo apt-get update &&
sudo apt-get install sublime-text

## Instalando linguagem Dart
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' &&
sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' &&
sudo apt-get update
sudo apt-get install dart
echo "Dart-lang instalada com sucesso"

## Atualização do sistema ##
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Finalizado"
