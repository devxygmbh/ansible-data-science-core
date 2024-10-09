---
gitea: none
include_toc: true
---

# Ansible role to install R

✨️ Highlights

- Uses prebuilt R interpreter binaries by default
- Supports installing R from local source tarballs (for air-gapped environments)
- For every R version, global `Renviron.site` (`/etc/Renviron.site`) and `Rprofile.site` (`/etc/Rprofile.site`) are configured by default
- Supports removing R versions not listed in variable `r_versions`

## Outbound Connectivity

| Purpose                        | URL                                                    |
| ------------------------------ | ------------------------------------------------------ |
| Download R interpreter (arm64) | <https://devxy-r-builds.s3.eu-central-2.amazonaws.com> |
| Download R interpreter (amd64) | <https://cdn.posit.co>                                 |

## Supported Platforms

### RHEL/Rocky/Alma

- RHEL 9 / AlmaLinux 9 / RockyLinux 9
- RHEL 8 / AlmaLinux 8 / RockyLinux 8

### Ubuntu

- 22.04 (Jammy)
- 24.04 (Noble)

## Default Variables

| Variable | Default | Description | Type |
| -------- | ------- | ----------- | ---- |
| `r_additional_options` |  | Additional default R options| `list` |
| `r_custom_repos` |  | Additional CRAN-like repositories| `list` |
| `r_interpreter_download_url` | `https://devxy-r-builds.s3.eu-central-2.amazonaws.com` | | `string` |
| `r_interpreter_install_binary` | `true` | Set to `false` to install from a source tarball. The tarball must be named `R-<version>.tar.gz`. Also, set `r_interpreter_source_path` to the local path where the tarball is stored.| `boolean` |
| `r_interpreter_source_path` |  | Local path to R source tarball| `string` |
| `r_interpreter_versions` | `['4.0.5', '4.1.3', '4.2.3', '4.3.3']` | | `list` |
| `r_remove_unused_r_versions` | `true` | | `boolean` |

## Requirements

- Minimum Ansible version: `2.9`

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
