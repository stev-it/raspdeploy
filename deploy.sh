#!/bin/bash

#Install script for every PI!

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root or with sudo" 
   exit 1
fi

#go into tmp for safekeeping permissions
cd /tmp

# Remove bloatware (Wolfram Engine, Libre Office, Minecraft Pi, sonic-pi dillo gpicview penguinspuzzle oracle-java8-jdk openjdk-7-jre oracle-java7-jdk openjdk-8-jre)
sudo apt-get remove --purge wolfram-engine libreoffice* scratch minecraft-pi sonic-pi dillo gpicview penguinspuzzle oracle-java8-jdk openjdk-7-jre oracle-java7-jdk openjdk-8-jre -y

# Autoremove
sudo apt-get autoremove -y

# Clean
sudo apt-get autoclean -y

# Update
sudo apt-get update
