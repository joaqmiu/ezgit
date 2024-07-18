#!/bin/bash

echo -e "Apagando sessão existente..."
rm -r ~/.ssh

sleep 2

read -p "Insira seu nome de usuário do GitHub: " username
git config --global user.name "$username"

read -p "Agora, insira seu e-mail do GitHub: " email
git config --global user.email "$email"

yes "" | ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/id_rsa -N ""

echo -e "\nA chave SSH gerada é:\n"
cat ~/.ssh/id_rsa.pub

ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts

echo " "
