#!/usr/bin/env bash
USERNAME=''


echo Initial server setup started... Host: "$HOSTNAME"

apt-get update

adduser $USERNAME

usermod -aG sudo $USERNAME
echo Rights granted

ufw app list
ufw allow OpenSSH
ufw enable
ufw status

