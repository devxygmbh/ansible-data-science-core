# Ansible Data Science Core

[![status-badge](https://ci.gitlab.devxy.io/api/badges/7/status.svg)](https://ci.gitlab.devxy.io/repos/7)

Collection to install Data Science related tools.

## Installation

```sh
ansible-galaxy collection install devxy.data_science_core
```

## Documentation

Refer to the `README.md` files within each individual role:

- [R](https://gitlab.com/devxy/ansible/data_science_core/-/blob/main/roles/r/README.md)
- [Python](https://gitlab.com/devxy/ansible/data_science_core/-/blob/main/roles/python/README.md)
- [Quarto](https://gitlab.com/devxy/ansible/data_science_core/-/blob/main/roles/quarto/README.md)

## Testing

All roles are tested via `molecule` using various test scenarios (defined in `extensions/molecule/`).

## Developing

### Molecule (test framework)

1. Install and active `venv` via `just init-venv`
2. Run `molecule <scenario>`, e.g. `molecule r_default`
