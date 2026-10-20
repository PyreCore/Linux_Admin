# Linux_Admin

[![ShellCheck](https://github.com/PyreCore/Linux_Admin/actions/workflows/shellcheck.yml/badge.svg)](https://github.com/PyreCore/Linux_Admin/actions/workflows/shellcheck.yml)

Collection of Linux administration scripts (Bash).

## Contents

| Script | Purpose |
| --- | --- |
| `system/create_users.sh` | User creation (adds a user and sets its password) |
| `system/delete_user.sh` | User deletion with confirmation (removes the user and its home directory) |
| `system/system_status.sh` | Quick system status report (OS, memory, disk, CPU, network, uptime) |

## Usage

```bash
# Create a user (name as argument, or prompted if omitted)
sudo bash system/create_users.sh alice

# Delete a user (asks for confirmation)
sudo bash system/delete_user.sh alice

# Show system status
bash system/system_status.sh
```

## Requirements

- Bash
- `useradd` / `passwd` / `userdel` (user management)
- Standard Linux tools (`uname`, `free`, `df`, `uptime`, `ip`)

## License

[MIT](LICENSE)