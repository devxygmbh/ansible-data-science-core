# Ansible Data Science Core

[![status-badge](https://ci.devxy.io/api/badges/9/status.svg)](https://ci.devxy.io/repos/9)

This Ansible collection contains various roles to install Data Science related tools.

## Installation

```sh
ansible-galaxy collection install devxy.data_science_core
```

## Documentation

Refer to the README.md files within each individual role:

- [R](roles/r/README.md)
- [Python](roles/python/README.md)
- [Quarto](roles/quarto/README.md)

## Developing

### Molecule (test framework)

1. Install and active `venv` via `just init-venv`
2. Run `molecule <scenario>`, e.g. `molecule r_default`
