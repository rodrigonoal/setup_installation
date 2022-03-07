#!/bin/bash 
# first run:
# chmod +x install.sh
sudo apt install preload git postgresql postgresql-contrib fonts-firacode bleachbit ubuntu-restricted-extras default-jdk default-jre

#VS Code
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

#Android Studio
sudo add-apt-repository ppa:maarten-fonville/android-studio
sudo apt update
sudo apt install android-studio

#Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
nvm install --lts
npm install -g react-native-cli

#Beekeeper studio
wget --quiet -O - https://deb.beekeeperstudio.io/beekeeper.key | sudo apt-key add -
echo "deb https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list
sudo apt update
sudo apt install beekeeper-studio

#Discord
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb

#Brew
sudo apt-get install build-essential
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/noal/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

#Watchman
brew update
brew install watchman

sudo apt update
sudo apt upgrade
sudo apt autoremove

#setando o env do java:
#sudo update-alternatives --config java
#sudo nano $HOME/.bashrc
#export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

#Instruções para configuração do react native:
#https://archive.reactnative.dev/docs/getting-started
