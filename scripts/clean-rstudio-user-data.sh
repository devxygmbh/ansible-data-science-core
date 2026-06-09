#!/usr/bin/env bash
set -euo pipefail

for home in /home/*/; do
  rm -rf "${home}.local/share/rstudio" "${home}.config/rstudio"
done
