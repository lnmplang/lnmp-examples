#!/usr/bin/env bash
set -euo pipefail

# Thin wrapper for `push-to-github.sh` at the top-level repo; it defaults to
# pushing the `lnmplang/lnmp-examples` repo if not provided a slug.

TOP_SCRIPT="../lnmp-protocol/scripts/push-to-github.sh"
if [ ! -f "$TOP_SCRIPT" ]; then
  echo "Top-level repo script $TOP_SCRIPT not found. Make sure the parent folder is named 'lnmp-protocol' and scripts/push-to-github.sh exists."
  exit 1
fi

${TOP_SCRIPT} "lnmplang/lnmp-examples" "$@"
