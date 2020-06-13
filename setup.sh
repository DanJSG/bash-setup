#!/bin/bash

LOGDIR=~/Documents/usersetup/
LOGPATH="${LOGDIR}setup.log"

sudo mkdir $LOGDIR
sudo touch $LOGPATH

# Add MongoDB key
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee -a /etc/apt/sources.list.d/mongodb-org-4.2.list

# Add yarn key
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Ensure apt package manager up to date
sudo apt-get update -y | sudo tee -a $LOGPATH
sudo apt upgrade -y | sudo tee -a $LOGPATH

# Utilities & command line tools
sudo apt-get install -y wget | sudo tee -a $LOGPATH
sudo apt install -y curl | sudo tee -a $LOGPATH
sudo apt-get install -y net-tools | sudo tee -a $LOGPATH
sudo apt-get install -y gparted | sudo tee -a $LOGPATH

# Essential software & services
sudo apt-get install -y git | sudo tee -a $LOGPATH
sudo apt-get install -y python3 | sudo tee -a $LOGPATH
sudo apt-get install -y python3-pip | sudo tee -a $LOGPATH
sudo apt install default-jdk | sudo tee -a $LOGPATH
sudo apt-get install -y gcc | sudo tee -a $LOGPATH
sudo apt-get install -y g++ | sudo tee -a $LOGPATH
sudo apt install -y mysql-server | sudo tee -a $LOGPATH
sudo apt-get install -y mongodb-org | sudo tee -a $LOGPATH
sudo apt install -y yarn | sudo tee -a $LOGPATH

# Useful appplications
sudo apt-get install -y vlc | sudo tee -a $LOGPATH
sudo apt-get install -y gimp | sudo tee -a $LOGPATH
sudo apt-get install -y inkscape | sudo tee -a $LOGPATH
sudo apt install -y chromium-browser | sudo tee -a $LOGPATH

# Install Eclipse EE
wget http://mirror.dkm.cz/eclipse/technology/epp/downloads/release/2020-03/R/eclipse-jee-2020-03-R-incubation-linux-gtk-x86_64.tar.gz | sudo tee -a $LOGPATH
mv eclipse-jee-2020-03-R-incubation-linux-gtk-x86_64.tar.gz /bin/eclipse.tar.gz | sudo tee -a $LOGPATH
tar -xvf /bin/eclipse.tar.gz | sudo tee -a $LOGPATH
rm -f /bin/eclipse.tar.gz | sudo tee -a $LOGPATH
cp resources/eclipse.desktop ~/.local/share/applications/eclipse.desktop | sudo tee -a $LOGPATH

# Stuff installed with Snap
sudo snap install node --classic --channel=14 | sudo tee -a $LOGPATH
sudo snap install --classic eclipse | sudo tee -a $LOGPATH
sudo snap install --classic code | sudo tee -a $LOGPATH
sudo snap install postman | sudo tee -a $LOGPATH

# Install essential vscode extensions
code --install-extension mgmcdermott.vscode-language-babel | sudo tee -a $LOGPATH
code --install-extension ms-vscode.cpptools | sudo tee -a $LOGPATH
code --install-extension vscjava.vscode-java-debug | sudo tee -a $LOGPATH
code --install-extension vscjava.vscode-java-dependency | sudo tee -a $LOGPATH
code --install-extension vscjava.vscode-java-pack | sudo tee -a $LOGPATH
code --install-extension vscjava.vscode-java-test | sudo tee -a $LOGPATH
code --install-extension redhat.java | sudo tee -a $LOGPATH
code --install-extension vscjava.vscode-maven | sudo tee -a $LOGPATH
code --install-extension ms-python.python | sudo tee -a $LOGPATH
code --install-extension gruntfuggly.todo-tree | sudo tee -a $LOGPATH
code --install-extension visualstudioexptteam.vscodeintellicode | sudo tee -a $LOGPATH

# Ensure all applications are upgraded and remove junk
sudo apt upgrade -y | sudo tee -a $LOGPATH
sudo apt autoremove -y | sudo tee -a $LOGPATH
