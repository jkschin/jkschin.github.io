#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

usage() {
  cat <<EOF
Usage: $(basename "$0") [TITLE] [OPTIONS]

Create a new Jekyll blog post in _posts/ (or _drafts/ with --draft).
Defaults to the standard post layout; pass --distill for technical Distill.pub posts.
If TITLE is omitted, prompts interactively.

Options:
  -t, --tags TAGS        Space-separated tags (e.g. "personal", "code")
  -d, --desc TEXT        Short post description
      --distill          Use layout: distill and create matching assets/bibliography/*.bib
      --draft            Create in _drafts/ instead of _posts/
  -o, --open             Open the new file in your editor (\$EDITOR or code)
  -h, --help             Show this help message

Examples:
  $(basename "$0") "My New Post"
  $(basename "$0") "Understanding Attention" --distill -t code -d "Notes on attention."
  $(basename "$0") "Work in Progress" --draft
EOF
}

TITLE=""
TAGS=""
DESCRIPTION=""
IS_DISTILL=false
IS_DRAFT=false
OPEN_FILE=false

while [[ $# -gt 0 ]]; do
  case "$1" in
    -t|--tag|--tags)
      TAGS="${2:-}"
      shift 2
      ;;
    -d|--desc|--description)
      DESCRIPTION="${2:-}"
      shift 2
      ;;
    --distill)
      IS_DISTILL=true
      shift
      ;;
    --draft)
      IS_DRAFT=true
      shift
      ;;
    -o|--open)
      OPEN_FILE=true
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    -*)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 1
      ;;
    *)
      if [[ -z "$TITLE" ]]; then
        TITLE="$1"
      else
        TITLE="$TITLE $1"
      fi
      shift
      ;;
  esac
done

# Interactive mode when no title is provided
if [[ -z "$TITLE" ]]; then
  read -r -p "Post title: " TITLE
  if [[ -z "$TITLE" ]]; then
    echo "Error: Title cannot be empty." >&2
    exit 1
  fi
  if [[ "$IS_DISTILL" == false ]]; then
    read -r -p "Distill layout for technical post? (y/N): " DISTILL_ANSWER
    case "$DISTILL_ANSWER" in
      [yY]|[yY][eE][sS]) IS_DISTILL=true ;;
    esac
  fi
  if [[ -z "$TAGS" ]]; then
    DEFAULT_TAG="personal"
    if [[ "$IS_DISTILL" == true ]]; then
      DEFAULT_TAG="code"
    fi
    read -r -p "Tags (e.g. personal, code) [${DEFAULT_TAG}]: " TAGS
    TAGS="${TAGS:-$DEFAULT_TAG}"
  fi
  if [[ -z "$DESCRIPTION" ]]; then
    read -r -p "Description (optional): " DESCRIPTION
  fi
fi

# Slugify title for filename
SLUG="$(printf '%s' "$TITLE" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-+//; s/-+$//')"
if [[ -z "$SLUG" ]]; then
  echo "Error: Could not generate a valid filename slug from title." >&2
  exit 1
fi

DATE_PREFIX="$(date '+%Y-%m-%d')"
FULL_DATE="$(date '+%Y-%m-%d %H:%M:%S%z')"

if [[ "$IS_DRAFT" == true ]]; then
  TARGET_DIR="$REPO_ROOT/_drafts"
else
  TARGET_DIR="$REPO_ROOT/_posts"
fi

mkdir -p "$TARGET_DIR"
FILE_PATH="$TARGET_DIR/${DATE_PREFIX}-${SLUG}.md"

if [[ -e "$FILE_PATH" ]]; then
  echo "Error: File already exists: $FILE_PATH" >&2
  exit 1
fi

# Quote YAML string values if they contain characters that could break YAML parsing
yaml_value() {
  local val="$1"
  if [[ -z "$val" ]]; then
    printf ''
    return
  fi
  case "$val" in
    *:*|*\#*|*\{*|*\}*|*\[*|*\]*|*,*|*\&*|*\**|*\?*|*\|*|*\<*|*\>*|*=*|*!*|*%*|*@*|*\`*|*\"*|*\'*|-\ *)
      local escaped="${val//\\/\\\\}"
      escaped="${escaped//\"/\\\"}"
      printf ' "%s"' "$escaped"
      ;;
    *)
      printf ' %s' "$val"
      ;;
  esac
}

TITLE_YAML="$(yaml_value "$TITLE")"
DESC_YAML="$(yaml_value "$DESCRIPTION")"
TAGS_YAML="$(yaml_value "$TAGS")"

if [[ "$IS_DISTILL" == true ]]; then
  BIB_FILENAME="${DATE_PREFIX}-${SLUG}.bib"
  BIB_DIR="$REPO_ROOT/assets/bibliography"
  BIB_PATH="$BIB_DIR/$BIB_FILENAME"
  mkdir -p "$BIB_DIR"
  if [[ ! -e "$BIB_PATH" ]]; then
    cat > "$BIB_PATH" <<EOF
% BibTeX references for "${TITLE}"
% Cite in the post using: <d-cite key="citation_key"></d-cite>
EOF
    echo "Created: $BIB_PATH"
  fi

  cat > "$FILE_PATH" <<EOF
---
layout: distill
title:${TITLE_YAML}
description:${DESC_YAML}
date: ${DATE_PREFIX}
tags:${TAGS_YAML}
authors:
  - name: Samuel J. K. Chin
    url: "https://jkschin.com"
    affiliations:
      name: MIT
bibliography: ${BIB_FILENAME}

toc:
  - name: Introduction
---

## Introduction
EOF
else
  cat > "$FILE_PATH" <<EOF
---
layout: post
title:${TITLE_YAML}
date: ${FULL_DATE}
description:${DESC_YAML}
tags:${TAGS_YAML}
related_posts: false
toc:
  sidebar: left
---

## Introduction
EOF
fi

echo "Created: $FILE_PATH"

if [[ "$OPEN_FILE" == true ]]; then
  if [[ -n "${EDITOR:-}" ]]; then
    "$EDITOR" "$FILE_PATH"
  elif command -v code >/dev/null 2>&1; then
    code "$FILE_PATH"
  else
    open "$FILE_PATH"
  fi
fi
