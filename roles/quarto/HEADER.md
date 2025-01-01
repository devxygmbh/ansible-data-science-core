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
