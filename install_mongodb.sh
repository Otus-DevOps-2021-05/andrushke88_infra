#!/bin/bash
#Get some Mongodb 4.2 
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodborg/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update && sudo apt install -y mongodb-org 
#Start Mongodb
sudo systemctl start mongod
sudo systemctl enable mongod
