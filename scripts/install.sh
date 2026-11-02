#!/usr/bin/env bash
set -euo pipefail
SOURCE="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-}"
if [[ -z "$TARGET" || ! -d "$TARGET" ]]; then
  echo "Usage: bash scripts/install.sh /path/to/existing-project" >&2
  exit 1
fi
TARGET="$(cd "$TARGET" && pwd)"
if [[ "$TARGET" == "$SOURCE" ]]; then
  echo "Source and target must differ." >&2
  exit 1
fi
for path in AGENTS.md .agents .harness; do
  if [[ -e "$TARGET/$path" ]]; then
    echo "Conflict: $TARGET/$path already exists. No files copied." >&2
    exit 2
  fi
done
cp "$SOURCE/AGENTS.md" "$TARGET/AGENTS.md"
cp -R "$SOURCE/.agents" "$TARGET/.agents"
cp -R "$SOURCE/.harness" "$TARGET/.harness"
echo "Codex Skills + Harness installed at $TARGET"
