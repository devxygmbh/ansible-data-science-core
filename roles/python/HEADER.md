---
gitea: none
include_toc: true
---

# Ansible Role Python

✨️ Highlights

- Supports installing multiple Python versions on the minor level (always installs the latest patch version)
- Supports removing Python versions not listed in `python_interpreter_versions`
- Uses [uv](https://github.com/astral-sh/uv) to install standalone CPython builds from [python-build-standalone](https://github.com/indygreg/python-build-standalone)

By default, Python versions are installed on the minor level.
`uv python install` automatically resolves to the latest available patch version for each minor, so there is no separate update mode needed.

## Outbound Connectivity

| Reason          | URL                                                             |
| --------------- | --------------------------------------------------------------- |
| Download uv     | <https://github.com/astral-sh/uv/releases/>                     |
| Download Python | <https://github.com/indygreg/python-build-standalone/releases/> |

## Supported Platforms

Any
