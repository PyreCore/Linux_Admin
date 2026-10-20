#!/bin/bash
set -euo pipefail

# Nom passé en argument, sinon demandé à l'utilisateur
username="${1:-}"
if [[ -z "$username" ]]; then
    read -r -p "Nom de l'utilisateur : " username
fi

if [[ -z "$username" ]]; then
    echo "Erreur : le nom d'utilisateur ne peut pas être vide." >&2
    exit 1
fi

if id "$username" &>/dev/null; then
    echo "Erreur : l'utilisateur $username existe déjà." >&2
    exit 1
fi

sudo useradd -m "$username"

sudo passwd "$username"

echo "Utilisateur $username créé."
