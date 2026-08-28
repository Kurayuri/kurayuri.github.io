#!/bin/bash

set -euo pipefail

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
site_root="$(cd -- "${script_dir}/.." && pwd)"

exec python3 -m http.server 4173 --bind 127.0.0.1 --directory "${site_root}"
