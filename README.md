# Linux_Admin

[![ShellCheck](https://github.com/PyreCore/Linux_Admin/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/PyreCore/Linux_Admin/actions/workflows/shellcheck.yml)

Collection de scripts d'administration Linux (Bash).

## Contenu

| Script | Rôle |
| --- | --- |
| `system/create_users.sh` | Création d'un utilisateur (ajoute l'utilisateur et définit son mot de passe) |
| `system/delete_user.sh` | Suppression d'un utilisateur avec confirmation (supprime l'utilisateur et son répertoire personnel) |
| `system/system_status.sh` | Rapport rapide sur l'état du système (OS, mémoire, disque, CPU, réseau, temps de fonctionnement) |

## Utilisation

```bash
# Créer un utilisateur (nom en argument, ou demandé s'il est omis)
sudo bash system/create_users.sh alice

# Supprimer un utilisateur (demande une confirmation)
sudo bash system/delete_user.sh alice

# Afficher l'état du système
bash system/system_status.sh
```

## Prérequis

- Bash
- `useradd` / `passwd` / `userdel` (gestion des utilisateurs)
- Outils Linux standards (`uname`, `free`, `df`, `uptime`, `ip`)

## Licence

[MIT](LICENSE)
