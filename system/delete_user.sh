#!/bin/bash
set -euo pipefail

# Nom passé en argument, sinon demandé à l'utilisateur
username="${1:-}"
if [[ -z "$username" ]]; then
    read -r -p "Nom de l'utilisateur à supprimer : " username
fi

if [[ -z "$username" ]]; then
    echo "Erreur : le nom d'utilisateur ne peut pas être vide." >&2
    exit 1
fi

if ! id "$username" &>/dev/null; then
    echo "Erreur : l'utilisateur $username n'existe pas." >&2
    exit 1
fi

if [[ "$username" == "root" || "$username" == "$(whoami)" ]]; then
    echo "Erreur : impossible de supprimer $username." >&2
    exit 1
fi

read -r -p "Supprimer $username et son répertoire personnel ? [o/N] " confirm
if [[ ! "$confirm" =~ ^[oO]$ ]]; then
    echo "Suppression annulée."
    exit 0
fi

sudo userdel -r "$username"

echo "Utilisateur $username supprimé."
