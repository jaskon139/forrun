#!/bin/bash

apt install nodejs npm -y

cd /app

if [ ! -d "/app/chinaunicom-AutoSignMachine" ]; then
  rm -fr chinaunicom-AutoSignMachine
  git clone https://github.com/simo8102/chinaunicom-AutoSignMachine
  cd /app/chinaunicom-AutoSignMachine
  tar xvf ../tt.tar
  openssl enc -d -aes-128-cbc -in ./321.txt  -k $key  -out 456.txt
  openssl enc -d -aes-128-cbc -in ./3212.txt  -k $key  -out 4562.txt
fi

value=`cat 456.txt` 
value2=`cat 4562.txt` 

echo "value="
echo $value

echo "value2="
echo $value2

npm install

node index.js unicom --user 18626875205 --password $value --appid 2a834d71bd261a5e0aaf6ab3342de851178991d5c86e325e26c77ae58fa9ef642169e9ffd6c1efa2b2ffd4f3eb99ffb3478961ae1ba10c166cc49c6d8d4b1372cca555da7ab9b6d375fc9be63fa19a57

node index.js unicom --user 13110676158 --password $value2 --appid 2a834d71bd261a5e0aaf6ab3342de851178991d5c86e325e26c77ae58fa9ef642169e9ffd6c1efa2b2ffd4f3eb99ffb3478961ae1ba10c166cc49c6d8d4b1372cca555da7ab9b6d375fc9be63fa19a57
