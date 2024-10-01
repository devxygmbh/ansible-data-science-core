---
gitea: none
include_toc: true
---

# Ansible role to install R

Installs and configures R in an opinionated way:

- All versions live at `/opt/R`
- For every R version, global `Renviron.site` (`/etc/Renviron.site`) and `Rprofile.site` (`/etc/Rprofile.site`) are configured by default
- Supports removing R versions not listed in variable `r_versions`

## Outbound Connectivity

| Purpose                        | URL                                                  |
| ------------------------------ | ---------------------------------------------------- |
| Download R interpreter (arm64) | https://devxy-r-builds.s3.eu-central-2.amazonaws.com |
| Download R interpreter (amd64) | https://cdn.posit.co                                 |

## Supported Platforms

### RHEL/Rocky/Alma

- RHEL 9 / AlmaLinux 9 / RockyLinux 9
- RHEL 8 / AlmaLinux 8 / RockyLinux 8

### Ubuntu

- 22.04 (Jammy)
- 24.04 (Noble)
