#!/bin/bash

apt install nodejs npm -y

rm -fr chinaunicom-AutoSignMachine

git clone https://github.com/simo8102/chinaunicom-AutoSignMachine

cd chinaunicom-AutoSignMachine

openssl.exe enc -d -aes-128-cbc -in 321.txt  -k $key  -out 456.txt

npm install

node index.js unicom --user 11111 --password 1111 --appid 1555555
