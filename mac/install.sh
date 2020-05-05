#!/bin/bash

# Install Deps
printf "\n[INFO] Using brew to install Zsh...\n"
brew install zsh
printf "\n[INFO] Using brew to install Antibody...\n"
brew install antibody

printf "\n[INFO] Setting default shell to Zsh\n"
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh

printf '\n[INFO] Must Reboot to finalize changes...\n'
printf "Press any key to restart now, Q/q to restart later\n"
read -n 1 response
if [ "$response" = "q" ] || [ "$response" = "Q" ]
then 
    printf "\n[WARNING] To complete installation, you must reboot.\n"
else
    sudo reboot
fi

