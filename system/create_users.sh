#!/bin/bash

read -p "Nom de l'utilisateur : " username

sudo useradd -m "$username"

sudo passwd "$username"

echo "Utilisateur $username créé."
