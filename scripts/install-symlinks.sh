#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

CORE_SKILL="preserve-authorial-writing"

# install_skills <config_dir> <scope> [app_name]
#   scope    : "full" (all skills) | "core" (only the always-on entry skill)
#   app_name : "codex" applies codex's skip-list; otherwise omit
# Symlinks repo skills into <config_dir>/skills, then prunes any symlink that
# points into THIS repo's skills/ but was NOT installed this run (handles rename/
# delete orphans AND full->core downgrades). Foreign skills (targets not under
# this repo) and real (non-symlink) entries the target owns are left untouched.
install_skills() {
  local config_dir="$1"
  local scope="$2"
  local app_name="${3:-}"
  local skills_dir="$config_dir/skills"
  mkdir -p "$skills_dir"

  # space-delimited membership string (bash 3.2-safe; avoids empty-array+set-u)
  local installed=" "
  local skill_path name
  for skill_path in "$repo_root"/skills/*; do
    [ -d "$skill_path" ] || continue
    name="$(basename "$skill_path")"
    if [ "$scope" = "core" ] && [ "$name" != "$CORE_SKILL" ]; then
      continue
    fi
    if [ "$app_name" = "codex" ] && { [ "$name" = "commit" ] || [ "$name" = "persona-review" ]; }; then
      continue
    fi
    # never clobber a real (non-symlink) entry the target repo owns
    if [ -e "$skills_dir/$name" ] && [ ! -L "$skills_dir/$name" ]; then
      echo "skip (not a symlink; leaving the target's own): $skills_dir/$name" >&2
      continue
    fi
    rm -rf "$skills_dir/$name"
    ln -s "$skill_path" "$skills_dir/$name"
    installed="$installed$name "
  done

  # prune repo-pointing symlinks we did not install this run
  [ "$installed" = " " ] && return 0
  local existing target base
  for existing in "$skills_dir"/*; do
    [ -L "$existing" ] || continue
    target="$(readlink "$existing")"
    case "$target" in
      "$repo_root"/skills/*) ;;
      *) continue ;;
    esac
    base="$(basename "$existing")"
    case "$installed" in
      *" $base "*) ;;
      *) echo "pruning orphaned skill symlink: $base -> $target"; rm -f "$existing" ;;
    esac
  done
}

# Shared references/voice (skills resolve ../../references and ../../voice)
# Do not clobber real (non-symlink) dirs the repo owns; only replace symlinks.
link_shared() {
  local config_dir="$1"
  for path in references voice; do
    local target="$config_dir/$path"
    if [ -e "$target" ] && [ ! -L "$target" ]; then
      echo "skip (not a symlink; leaving the repo's own): $target" >&2
      continue
    fi
    rm -rf "$target"
    ln -s "$repo_root/$path" "$target"
  done
}

# Keep a local install out of the invoking repo's tracked status
exclude_local() {
  local repo="$1"
  [ -d "$repo/.git" ] || return 0
  local exclude="$repo/.git/info/exclude"
  mkdir -p "$repo/.git/info"
  local entry
  for entry in ".claude/skills/" ".claude/references" ".claude/voice"; do
    grep -qxF "$entry" "$exclude" 2>/dev/null || echo "$entry" >> "$exclude"
  done
}

usage() {
  cat <<'EOF'
Usage: scripts/install-symlinks.sh <target>

Targets:
  core             Install ONLY the always-on entry skill (preserve-authorial-writing)
                   globally into ~/.claude and ~/.codex, plus shared references/voice.
                   The recommended minimal footprint: the core bootstraps the rest
                   into a repo on demand (see the skill's "Bootstrapping the stack").
  local [repo]     Install the FULL stack into <repo>/.claude (default: cwd), and add
                   .claude/skills,references,voice to <repo>/.git/info/exclude so the
                   working repo is not dirtied. This is what the core invokes on a
                   first writing request in a repo (with the user's permission).
  full | all       Legacy: install the FULL stack globally into ~/.claude and ~/.codex.
  claude | codex   Full stack into just that app's global config.

All targets prune symlinks orphaned by a skill rename/delete (and full->core
downgrades). Codex skips: commit, persona-review.
EOF
}

target="${1:-}"
case "$target" in
  core)
    install_skills "$HOME/.codex" core codex; link_shared "$HOME/.codex"
    install_skills "$HOME/.claude" core;       link_shared "$HOME/.claude"
    ;;
  local)
    repo="$(cd "${2:-$PWD}" && pwd)"
    install_skills "$repo/.claude" full
    link_shared "$repo/.claude"
    exclude_local "$repo"
    echo "Installed the full writing stack into $repo/.claude (git-excluded)."
    ;;
  full|all)
    install_skills "$HOME/.codex" full codex; link_shared "$HOME/.codex"
    install_skills "$HOME/.claude" full;       link_shared "$HOME/.claude"
    ;;
  codex)
    install_skills "$HOME/.codex" full codex; link_shared "$HOME/.codex"
    ;;
  claude)
    install_skills "$HOME/.claude" full; link_shared "$HOME/.claude"
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    usage >&2
    exit 2
    ;;
esac
