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

<generator object sync_do_map at 0x10c14f040>

## Default Variables

| Variable                               | Default                                                | Description                                                                   | Type      |
| -------------------------------------- | ------------------------------------------------------ | ----------------------------------------------------------------------------- | --------- |
| `python_install_dir`                   | `"/opt/python"`                                        | Base directory for Python installations                                       | `string`  |
| `python_interpreter_versions`          | `["3.12", "3.13", "3.14"]`                             |                                                                               | `list`    |
| `python_remove_unused_python_versions` | `true`                                                 | Whether to remove python versions not listed in `python_interpreter_versions` | `boolean` |
| `python_ubi_cdn_base_url`              | `"https://cdn-ubi.redhat.com/content/public/ubi/dist"` | Base URL for UBI CDN (without trailing slash)                                 | `string`  |
| `python_use_ubi_cdn`                   | `false`                                                | Use Red Hat UBI CDN for Python RPM downloads instead of uv                    | `boolean` |
| `python_uv_install_dir`                | `"/usr/local/bin"`                                     | Directory where the uv binary is installed                                    | `string`  |
| `python_uv_version`                    | `"latest"`                                             | Version of uv to install (or 'latest')                                        | `string`  |

## Requirements

- Minimum Ansible version: `2.9`

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
