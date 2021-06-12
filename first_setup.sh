#!/bin/bash

sudo adduser sampleuser
sudo adduser sampleuser sudo
# 初期ユーザ(ubuntu)のパスワードを削除
sudo passwd -d ubuntu
sudo passwd -l ubuntu
sudo passwd -l root

# 時間設定
timedatectl set-timezone Asia/Tokyo

# SSH設定
# ssh-keygen -t rsa -f id_rsa_sampleuser -C ""
cd ~ && mkdir .ssh
mv id_rsa_sampleuser.pub .ssh/authorized_keys
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

