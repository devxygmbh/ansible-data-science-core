# Ansible Data Science Core

[![status-badge](https://ci.codefloe.com/api/badges/108/status.svg)](https://ci.codefloe.com/repos/108)

Collection to install Data Science related tools.

## Installation

```sh
ansible-galaxy collection install devxy.data_science_core
```

→ [Ansible Galaxy](https://galaxy.ansible.com/ui/repo/published/devxy/data_science_core/)

## Documentation

Refer to the `README.md` files within each individual role:

- [R](https://codefloe.com/devxy/data_science_core/src/branch/main/roles/r/README.md)
- [Python](https://codefloe.com/devxy/data_science_core/src/branch/main/roles/python/README.md)
- [Quarto](https://codefloe.com/devxy/data_science_core/src/branch/main/roles/quarto/README.md)

## Testing

All roles are tested via `molecule` using various test scenarios (defined in `extensions/molecule/`).

## Developing

### Molecule (test framework)

1. Install and active `venv` via `just init-venv`
2. Run `molecule <scenario>`, e.g. `molecule r_default`
