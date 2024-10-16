---
gitea: none
include_toc: true
---

# Ansible Role Python

✨️ Highlights

- Supports installing multiple Python versions on the minor level (always installs the latest patch version)
- Supports removing Python versions not listed in `python_interpreter_versions`
- Allows pinning Python versions to the minor (with auto-update mode) or patch level

By default, python versions are installed on the minor level with support for auto-updating: on every run of the role (with `python_update_versions: true`), it is checked if a new patch version is available for the respective minor.
If so, the minor version will be re-installed with the latest available patch version.

An alternative is to specify the versions on the patch level directly.
This results in static versions that will not be altered unless they are removed from the list of versions (`python_interpreter_versions`).

## Outbound Connectivity

| Reason             | URL                                                                     |
| ------------------ | ----------------------------------------------------------------------- |
| Download miniconda | <https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh> |
| Download Python    | <https://repo.anaconda.com>                                             |

## Supported Platforms

Any

your role description

## Default Variables

| Variable                               | Default            | Description                                                                                                    | Type      |
| -------------------------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------- | --------- |
| `python_interpreter_versions`          | `['3.12', '3.13']` |                                                                                                                | `list`    |
| `python_remove_unused_python_versions` | `true`             | Whether to remove python versions not listed in `python_interpreter_versions`                                  | `boolean` |
| `python_update_versions`               | `true`             | If true, automatically updates the minor versions in `python_interpreter_versions` to the latest patch version | `boolean` |

## Requirements

- Minimum Ansible version: `2.1`

## Dependencies

None.

## License

license (GPL-2.0-or-later, MIT, etc)

## Author

your name
