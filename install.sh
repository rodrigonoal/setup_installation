#!/bin/bash 
# first run:
# chmod +x install.sh
sudo apt install preload git fonts-firacode bleachbit ubuntu-restricted-extras default-jdk default-jre

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

#Discord
sudo apt install gdebi-core wget
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo gdebi ~/discord.deb 

#setando o env do java:
#sudo update-alternatives --config java
#nano /etc/environment
#JAVA_HOME=”/your/installation/path/”