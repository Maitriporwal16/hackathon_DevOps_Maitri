#!/bin/bash
#This is a bash script file for cloning the prowler in the ubuntu server!

# Install packages
sudo yum update -y
sudo yum install python3 -y
sudo yum install screen -y

# env vars
account=$(aws sts get-caller-identity | jq --raw-output '.Account')

# Prowler
cd ~
git clone https://github.com/prowler-cloud/prowler
pip3 install detect-secrets --user
cd prowler
screen -dmS prowler sh -c "./prowler -M csv,html;cd~; zip -r ${account}-results/prowler-${accounty}.zip /home/cloudshell-user/prowler/output"

# Check on screen sessions
screen -ls

#adding lines to check for gerrit 
sudo yum update -y
