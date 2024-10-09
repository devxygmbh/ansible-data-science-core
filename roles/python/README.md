---
gitea: none
include_toc: true
---

# Ansible Role Python

✨️ Highlights

- Supports installing multiple Python versions on the minor level (always installs the latest patch version)
- Supports removing Python versions not listed in `python_interpreter_versions`

## Outbound Connectivity

| Reason             | URL                                                                     |
| ------------------ | ----------------------------------------------------------------------- |
| Download miniconda | <https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh> |
| Download Python    | <https://repo.anaconda.com>                                             |

## Supported Platforms

Any

your role description

## Default Variables

| Variable | Default | Description | Type |
| -------- | ------- | ----------- | ---- |
| `python_interpreter_versions` | `['3.9', '3.10', '3.11', '3.12']` | | `list` |
| `python_remove_unused_python_versions` | `true` | Whether to remove python versions not listed in `python_interpreter_versions`| `boolean` |
| `python_update_versions` | `true` | If true, automatically updates the minor versions in `python_interpreter_versions` to the latest patch version| `boolean` |

## Requirements

- Minimum Ansible version: `2.1`

## Dependencies

None.

## License

license (GPL-2.0-or-later, MIT, etc)

## Author

your name
