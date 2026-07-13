---
name: render-word
description: Export a markdown file to Gates Foundation–styled .docx using pandoc and the captured Word defaults (Aptos fonts, Normal.dotm, 1-inch margins, US Letter).
tier: leaf
role: transform
calls: —
---

# Render Word

A leaf skill for converting markdown → .docx. Pandoc applies the Gates/M365
Word styles from the reference file, preserving fonts, theme, and page setup
exactly.

## Prerequisites

- Pandoc 3.5+ installed (e.g., `~/.local/bin/pandoc`)
- Input: a markdown file
- Reference template: included in the skill folder at `templates/gates_word_default_reference.docx`

## Procedure

### 1. Resolve paths

The reference template is packaged with the skill. Locate it:

```bash
SKILL_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
REF_DOC="$SKILL_ROOT/templates/gates_word_default_reference.docx"
```

Or, if running from a different context (e.g., through Claude Code), resolve from
the symlink:

```bash
REF_DOC="$(readlink -f ~/.claude/skills/render-word)/templates/gates_word_default_reference.docx"
```

If the reference file is missing, warn the user and do NOT proceed silently.
Report the path that was attempted.

### 2. Parse arguments

Arguments from the user:

- **Input path** (required): markdown file, absolute or relative to cwd.
- **Output path** (optional): where to save the .docx. Default: same directory
  as input, same stem, `.docx` extension.
- **`--toc`** (optional): include a table of contents.

Examples:

```
/render-word report.md
/render-word report.md ~/Desktop/report.docx
/render-word report.md output.docx --toc
```

### 2.5. Compute resource paths for embedded images

If the markdown contains images with relative paths (e.g., `![](../../figures/image.png)`),
pandoc cannot find them because it resolves paths from the current working directory,
not from the markdown file's location. This step is only needed if:
- The markdown contains relative image references, **AND**
- The skill is run from a directory other than the markdown's parent directory

If both conditions hold, compute the directories containing images and pass them via `--resource-path`.

**Working method:**

```bash
# Convert INPUT to absolute path; get its directory
[[ "$INPUT" = /* ]] && abs_input="$INPUT" || abs_input="$(pwd)/$(dirname "$INPUT")/$(basename "$INPUT")"
input_dir="$(dirname "$abs_input")"

# Extract image paths from markdown, resolve each relative to input_dir
# and express relative to current working directory
resource_dirs=""
while IFS= read -r img_path; do
  # Skip URLs and absolute paths
  [[ "$img_path" =~ ^(http|/|~) ]] && continue
  [ -z "$img_path" ] && continue
  
  # Resolve: cd to input dir, resolve path, then get absolute directory
  abs_img="$(cd "$input_dir" && python3 -c "
import sys
from pathlib import Path
print(Path(sys.argv[1]).resolve().parent)
" "$img_path" 2>/dev/null)"
  
  # Make it relative to cwd, and check it exists
  if [ -n "$abs_img" ] && [ -d "$abs_img" ]; then
    rel_img="$(python3 -c "import os; print(os.path.relpath('$abs_img', '$(pwd)'))" 2>/dev/null)"
    resource_dirs="${resource_dirs}:${rel_img}"
  else
    # Debug: warn if image directory doesn't exist
    echo "⚠ Image directory not found: $img_path (resolved from $input_dir)" >&2
  fi
done < <(grep -oE '!\[[^\]]*\]\([^)]+\.[a-zA-Z0-9]+\)' "$INPUT" | sed 's/.*(\([^)]*\)).*/\1/')

# Deduplicate and remove leading/trailing colons
resource_dirs="$(echo "$resource_dirs" | tr ':' '\n' | sort -u | grep -v '^$' | tr '\n' ':' | sed 's/:$//')"
```

**Result:** If `resource_dirs` is non-empty, pass it to pandoc in step 3.  
If no images found, all are absolute URLs, or the skill runs from the markdown's parent dir, `resource_dirs` will be empty; skip `--resource-path`.

### 3. Build and run the pandoc command

```bash
pandoc "$INPUT" \
  --from=markdown \
  --to=docx \
  --reference-doc="$REF_DOC" \
  ${resource_dirs:+--resource-path="$resource_dirs"} \
  [--toc] \
  -o "$OUTPUT"
```

If `--toc` is requested, add `--toc` to the command. Otherwise omit it.

The `${resource_dirs:+...}` syntax includes `--resource-path` only if `resource_dirs` is non-empty.

### 4. Verify and report

Confirm the output file was created:

```bash
if [ -f "$OUTPUT" ]; then
  ls -lh "$OUTPUT"
  echo "✓ Rendered: $OUTPUT"
else
  echo "✗ Failed: output file not created at $OUTPUT"
  exit 1
fi
```

Report the full output path to the user.

## Fallback behavior

If `$REF_DOC` does not exist, **do not silently fall back to bare pandoc**.
Warn the user:

```
⚠ Reference template not found at: $REF_DOC
(Expected: <repo>/templates/gates_word_default_reference.docx)

Proceeding without reference may produce incorrect styles.
```

Then offer to proceed with bare pandoc or halt.

## Verification

Before confirming success:

1. Output file exists and has non-zero size (`ls -lh`).
2. Open the .docx in Word or a compatible viewer.
3. Confirm:
   - Body text is Aptos, 12pt
   - Heading 1 is Aptos Display
   - Page margins are 1 inch
   - Page is US Letter, portrait
   - Theme colors and fonts match the reference

For documents with multiple heading levels, verify that TOC generation (if
requested) captured all entries.

## Notes

- Pandoc handles markdown → .docx conversion; the reference file applies Gates
  Word defaults.
- **Embedded images:** if the markdown references images with relative paths, use
  section 2.5 to compute `--resource-path` directories. Pandoc resolves relative
  paths from the current working directory, not from the markdown file's location,
  so explicit guidance is needed. This was first discovered rendering the
  TB-modeling dossier (10_final.md) — see section 2.5 for the working solution.
- The skill does not edit or post-process the output — pandoc's output is
  final.
- For programmatic Word document construction (building a .docx from structured
  data), use a different skill with python-docx.
