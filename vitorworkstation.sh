#!/bin/bash

## Removendo travas do apt ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##
sudo apt update &&

##Pacotes do repositório deb do Ubuntu
sudo apt install python3 docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak -y &&

## Instalando snap ##
sudo apt install snapd

## Instalando pacotes Snap ##
sudo snap install slack --classic &&
sudo snap install discord &&
sudo snap install code --classic &&
sudo snap install --edge node --classic &&
sudo snap install spotify &&
sudo snap install wps-office-multilang &&
sudo snap install insomnia &&
sudo snap install postman

## Adicionando repositório Flathub ##
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.comflatpakrepo &&

## Instalando Apps do Flathub ##
sudo flatpak install flathub com.obsproject.Studio -y &&
sudo flatpak install flathub com.sublimetext.three -y &&

## Softwares de download externo ##
cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb && wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&

## Atualização do sistema ##
sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Finalizado"