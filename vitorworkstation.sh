#!/bin/bash

## Removendo travas do apt ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##
sudo apt update &&

## Pacotes do repositório deb do Ubuntu ##
sudo apt install python3 build-essential libssl-dev ubuntu-make flatpak gnome-software-plugin-flatpak -y &&

## Git ##
sudo apt-get install git &&
git config --global user.name = "Vitor Negromonte" &&
git config --global user.email = "vitorncabral@protonmail.com"

## Instalando snap ##
sudo apt install snapd

## Instalando pacotes Snap ##
sudo snap install code --classic &&
echo "Visual Studio Code instalado com sucesso"
sudo snap install --edge node --classic &&
sudo snap install spotify &&
echo "Spotify instalado com sucesso"

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

## Instalando Brave web-browser pelo pacote oficial##
sudo apt install apt-transport-https curl gnupg &&
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - &&
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser &&

## Atualização do sistema ##
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Finalizado"
