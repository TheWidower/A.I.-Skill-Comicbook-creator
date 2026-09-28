#!/usr/bin/env bash
set -euo pipefail

REPOSITORY='TheWidower/A.I.-Skill-Comicbook-creator'
SKILL_NAME='comic-book-creator'
SCOPE_ARGS=(--global)
AGENT_ARGS=()
DRY_RUN=0

usage() {
  cat <<'USAGE'
Install the Comic Book Creator skill with the cross-agent Skills CLI.

Usage:
  ./install.sh [--global | --project] [--agent AGENT_ID]... [--dry-run]

Options:
  --global       Install to the selected agent's user-level skills directory (default).
  --project      Install to the current project's skills directory.
  --agent ID     Target an agent supported by the Skills CLI. Repeat to target multiple.
  --dry-run      Print the command without running it.
  -h, --help     Show this help.

Without --agent, the Skills CLI lets you choose from supported agents interactively.
Run with --project from the project where you want the skill available.
USAGE
}

while (($#)); do
  case "$1" in
    --global)
      SCOPE_ARGS=(--global)
      shift
      ;;
    --project)
      SCOPE_ARGS=()
      shift
      ;;
    --agent)
      if (($# < 2)) || [[ -z "$2" ]]; then
        echo 'Error: --agent requires an agent ID.' >&2
        usage >&2
        exit 2
      fi
      AGENT_ARGS+=(--agent "$2")
      shift 2
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Error: unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

if ! command -v npx >/dev/null 2>&1; then
  echo 'Error: npx was not found. Install Node.js with npm, or use the manual instructions in README.md.' >&2
  exit 127
fi

COMMAND=(npx skills add "$REPOSITORY" --skill "$SKILL_NAME" "${SCOPE_ARGS[@]}" "${AGENT_ARGS[@]}")
if ((DRY_RUN)); then
  printf 'Would run: '
  printf '%q ' "${COMMAND[@]}"
  printf '\n'
  exit 0
fi

exec "${COMMAND[@]}"
