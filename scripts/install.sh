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
  echo "Source and target must differ." >&2; exit 1
fi
# Never overwrite project-specific instructions or documentation.
paths=(AGENTS.md .agents .harness docs/REPORT-TEMPLATE.md docs/DECISION-LOG.md docs/PROJECT-STATE.md docs/WORKFLOW.md)
for path in "${paths[@]}"; do
  if [[ -e "$TARGET/$path" ]]; then
    echo "Conflict: $TARGET/$path already exists. No files copied." >&2
    exit 2
  fi
done
mkdir -p "$TARGET/docs"
cp "$SOURCE/AGENTS.md" "$TARGET/AGENTS.md"
cp -R "$SOURCE/.agents" "$TARGET/.agents"
cp -R "$SOURCE/.harness" "$TARGET/.harness"
for name in REPORT-TEMPLATE.md DECISION-LOG.md PROJECT-STATE.md WORKFLOW.md; do
  cp "$SOURCE/docs/$name" "$TARGET/docs/$name"
done
echo "Codex harness installed at $TARGET"
echo "Review AGENTS.md and docs/PROJECT-STATE.md before running codex."
