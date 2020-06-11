#!/bin/bash

# Add MongoDB key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

# Ensure apt package manager up to date
sudo apt-get update
sudo apt upgrade

# Useful tools
sudo apt-get install -y wget
sudo apt install curl
sudo apt-get install -y net-tools
sudo apt-get install -y gparted

# Essential software
sudo apt-get install -y git
sudo apt-get install -y python3
sudo apt-get install -y pip3
sudo apt install default-jdk
sudo apt-get install -y gcc
sudo apt-get install -y g++
sudo apt install mysql-server
sudo apt-get install -y mongodb-org
sudo apt-get install -y vlc
sudo apt-get install -y gimp
sudo apt-get install -y inkscape
sudo apt install chromium-browser

# Stuff installed with Snap
sudo snap install node --classic --channel=14
sudo snap install --classic code
sudo snap install postman

# Install essential vscode extensions
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension ms-vscode.cpptools
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-dependency
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension redhat.java
code --install-extension vscjava.vscode-maven
code --install-extension ms-python.python
code --install-extension gruntfuggly.todo-tree
code --install-extension visualstudioexptteam.vscodeintellicode

sudo apt upgrade
