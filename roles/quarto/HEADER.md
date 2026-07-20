[[_TOC_]]

# Ansible role to install Quarto

✨️ Highlights

- Supports installing multiple versions alongside each other
- Allows specifying SemVer versions and dynamic identifiers (`release`, `pre_release`)
- Supports referencing custom URLs for download
- Supports referencing local tarballs for airgapped environments
- Adds all executables to $PATH (`bash`)

## Outbound Connectivity

| Purpose                            | URL                                                 |
| ---------------------------------- | --------------------------------------------------- |
| Infer latest (pre-)release version | <https://quarto.org/docs/download/>                 |
| Download release                   | <https://github.com/quarto-dev/quarto-cli/releases> |

## Supported Platforms

All (Quarto is a generic binary)
