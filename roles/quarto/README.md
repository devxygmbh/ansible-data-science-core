---
gitea: none
include_toc: true
---

# Ansible role to install Quarto

✨️ Highlights

- Supports installing multiple versions alongside each other
- Allows specifying SemVer versions and dynamic identifiers (`release`, `pre_release`)
- Supports referencing intern URLs for download
- Supports referencing local tarballs for offline installation
- Adds all executables to $PATH (`bash`)

## Outbound Connectivity

| Purpose                                 | URL                                                |
| --------------------------------------- | -------------------------------------------------- |
| Infer latest release & Download release | https://api.github.com/repos/quarto-dev/quarto-cli |

## Supported Platforms

All (Quarto is a generic binary)

your role description

## Default Variables

| Variable | Default | Description | Type |
| -------- | ------- | ----------- | ---- |
| `quarto_add_to_path` | `true` | Whether to add the executables to $PATH (bash)| `boolean`
|
| `quarto_custom_download_url` |  | URL for local download. Cannot be combined with dynamic release IDs like 'release'. The tarballs must be named as: `quarto-{{ version }}-linux-{{ arch }}.tar.gz`.| `string`
|
| `quarto_installation_dir` | `/opt/quarto` | The directory in which to install Quarto| `string`
|
| `quarto_local_tarball_path` |  | Local path to Quarto tarballs. The tarballs must be named as: `quarto-{{ version }}-linux-{{ arch }}.tar.gz`.| `string`
|
| `quarto_versions` | `['release']` | | `list`
|

## Requirements

- Minimum Ansible version: `2.1`



## Dependencies

None.

## License

license (GPL-2.0-or-later, MIT, etc)

## Author

your name
