[[_TOC_]]

# Ansible role to install Quarto

✨️ Highlights

- Supports installing multiple versions alongside each other
- Allows specifying SemVer versions and dynamic identifiers (`release`, `pre_release`)
- Supports referencing custom URLs for download
- Supports referencing local tarballs for airgapped environments
- Adds all executables to $PATH (`bash`)

## Outbound Connectivity

| Purpose                                 | URL                                                  |
| --------------------------------------- | ---------------------------------------------------- |
| Infer latest release & Download release | <https://api.github.com/repos/quarto-dev/quarto-cli> |

## Supported Platforms

All (Quarto is a generic binary)

<generator object sync_do_map at 0x10c14f640>

## Default Variables

| Variable                     | Default         | Description                                                                                                                                                        | Type      |
| ---------------------------- | --------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------- |
| `quarto_add_to_path`         | `true`          | Whether to add the executables to $PATH (bash)                                                                                                                     | `boolean` |
| `quarto_custom_download_url` |                 | URL for local download. Cannot be combined with dynamic release IDs like 'release'. The tarballs must be named as: `quarto-{{ version }}-linux-{{ arch }}.tar.gz`. | `string`  |
| `quarto_installation_dir`    | `"/opt/quarto"` | The directory in which to install Quarto                                                                                                                           | `string`  |
| `quarto_local_tarball_path`  |                 | Local path to Quarto tarballs. The tarballs must be named as: `quarto-{{ version }}-linux-{{ arch }}.tar.gz`.                                                      | `string`  |
| `quarto_versions`            | `"release"`     |                                                                                                                                                                    | `list`    |

## Requirements

- Minimum Ansible version: `2.9`

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
