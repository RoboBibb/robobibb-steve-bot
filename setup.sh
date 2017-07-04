#!/bin/sh

## This script automatically sets everything up for you so
## to be run upon cloneing the repo

## make everything runable
chmod +x setup.sh update.sh steve.sh

# get bot token
printf "Enter your Telegram Bot API token: "
read token

# put token into steve.sh
sed -i "s/^export TELEGRAM_TOKEN=.*/export TELEGRAM_TOKEN=${token}/" steve.sh

# install dependencies
npm install --save node-telegram-bot-api
