[[_TOC_]]

# Ansible role to install data science system libraries

Installs a curated set of system-level development libraries and tools commonly needed for building and running data science packages (R packages, Python packages with native extensions, etc.).

## Outbound Connectivity

| Purpose          | URL                          |
| ---------------- | ---------------------------- |
| Package download | OS distribution repositories |

## Supported Platforms

### RHEL/Rocky/Alma

- RHEL 10 / AlmaLinux 10 / RockyLinux 10
- RHEL 9 / AlmaLinux 9 / RockyLinux 9
- RHEL 8 / AlmaLinux 8 / RockyLinux 8

### Ubuntu

- 22.04 (Jammy)
- 24.04 (Noble)

<generator object sync_do_map at 0x10c14f640>

## Default Variables

| Variable                  | Default                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    | Description                                                                       | Type   |
| ------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | ------ |
| `syslibs_extra_packages`  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            | Additional packages to install on any platform (appended to the OS-specific list) | `list` |
| `syslibs_packages_redhat` | `["cairo-devel", "cargo", "fontconfig-devel", "freetype-devel", "freetds", "fribidi-devel", "gdal-devel", "geos-devel", "git", "glpk-devel", "gmp-devel", "harfbuzz-devel", "ImageMagick-c++-devel", "java-21-openjdk-headless", "jq-devel", "libgit2-devel", "libicu-devel", "libpng-devel", "libpq-devel", "librsvg2-devel", "libsecret-devel", "libsodium-devel", "libxml2-devel", "mesa-libGLU-devel", "mpfr-devel", "netcdf-devel", "poppler-utils", "proj-devel", "readline-devel", "rust", "sqlite-devel", "udunits2-devel", "unixODBC-devel", "zlib-devel"]`       | System library packages to install on RedHat-based systems                        | `list` |
| `syslibs_packages_ubuntu` | `["cargo", "default-jdk-headless", "freetds-common", "git", "jags", "libcairo2-dev", "libfontconfig-dev", "libfreetype-dev", "libfribidi-dev", "libgdal-dev", "libgeos-dev", "libgit2-dev", "libglpk-dev", "libglu1-mesa-dev", "libgmp3-dev", "libharfbuzz-dev", "libicu-dev", "libjq-dev", "libmagick++-dev", "libmpfr-dev", "libnetcdf-dev", "libpng-dev", "libpq-dev", "libreadline-dev", "librsvg2-dev", "libsecret-1-dev", "libsodium-dev", "libsqlite3-dev", "libudunits2-dev", "libv8-dev", "libxml2-dev", "poppler-utils", "rustc", "unixodbc-dev", "zlib1g-dev"]` | System library packages to install on Ubuntu systems                              | `list` |

## Requirements

- Minimum Ansible version: `2.9`

## Dependencies

None.

## License

AGPL-3.0-or-later

## Author

Patrick Schratz
