## Removendo travas do apt ##
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Build essential ##
sudo apt install build-essential &&

Sudo apt-get update

## Git configuration ##
git config --global user.name "Vitor Negromonte" && git config --global user.email "vitorncabral@protonmail.com" &&
echo "Git configured"

## Package installing ##
sudo apt install curl gnome-tweak-tool snapd libssl-dev ubuntu-make flatpak neofetch gnome-software-plugin-flatpak -y &&

## Visual Studio Code ##
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg &&
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ &&
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' &&
sudo apt install apt-transport-https &&
sudo apt update &&
sudo apt install code

## Yarn ##
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

## VLC and Obs-studio ##
sudo apt install vlc obs-studio -y &&
echo "VLC and OBS installed"

## Sublime text 3 ##
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && sudo apt-get install apt-transport-https && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && sudo apt-get update && sudo apt-get install sublime-text &&
echo "Sublime Text 3 installed"

## Dart ##
sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -' && sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list' && sudo apt-get update && sudo apt-get install dart &&
echo "Dart-lang installed"

## Go, Python 2 and Python 3, Ruby  ##
sudo apt-get install golang-go python3 python2 ruby-full &&
echo "Ruby, Go-lang, Python 2 and Python 3 installed "

## Java ##
sudo add-apt-repository ppa:linuxuprising/java && sudo apt-get update && sudo apt install oracle-java15-installer
echo "Java installed"

## PHP 8 ##
sudo apt-get install software-properties-common && sudo add-apt-repository ppa:ondrej/php && sudo apt update && sudo apt install php8.0 php8.0-intl php8.0-mysql php8.0-sqlite3 php8.0-gd &&
echo "PHP8 installed"

## Node.js ##
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs &&
echo "Node.js version 14 installed"

## Elixir ##
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb && sudo dpkg -i erlang-solutions_2.0_all.deb && sudo apt-get update && sudo apt-get install esl-erlang && sudo apt-get install elixir
echo "Elixir installed"

## Web-browsers ##
sudo apt install apt-transport-https curl gnupg && curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - &&
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list && sudo apt update && sudo apt install brave-browser &&
echo "Brave installed"

sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo apt-get update && sudo sed -i -e 's/deb http/deb [arch=amd64] http/' "/etc/apt/sources.list.d/google.list" && sudo sed -i -e 's/deb http/deb [arch=amd64] http/' "/opt/google/chrome/cron/google-chrome" && sudo apt-get install google-chrome-stable &&
echo "Chrome installed"

## Dev ##
cd ~
mkdir Dev
cd Dev
code .

## Atualization ##
sudo apt update && sudo apt upgrade && sudo apt dist-upgrade -y && sudo apt autoremove && sudo apt autoclean &&

echo "End of the script"
