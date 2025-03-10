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

| Purpose                        | URL                                                  |
| ------------------------------ | ---------------------------------------------------- |
| Download R interpreter (arm64) | <https://fsn1.your-objectstorage.com/devxy-r-builds> |
| Download R interpreter (amd64) | <https://cdn.posit.co>                               |

## Supported Platforms

### RHEL/Rocky/Alma

- RHEL 9 / AlmaLinux 9 / RockyLinux 9
- RHEL 8 / AlmaLinux 8 / RockyLinux 8

### Ubuntu

- 22.04 (Jammy)
- 24.04 (Noble)
