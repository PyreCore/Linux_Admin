# Linux_Admin

Collection of Linux administration scripts (Bash).

## Contents

| Script | Purpose |
| --- | --- |
| `system/create_users.sh` | Interactive user creation (adds a user and sets its password) |
| `system/system_status.sh` | Quick system status report (OS, memory, disk, CPU, network, uptime) |

## Usage

```bash
# Create a user interactively
sudo bash system/create_users.sh

# Show system status
bash system/system_status.sh
```

## Requirements

- Bash
- `useradd` / `passwd` (user creation)
- Standard Linux tools (`uname`, `free`, `df`, `uptime`, `ip`)

## License

[MIT](LICENSE)