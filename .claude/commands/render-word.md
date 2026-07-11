# /render-word

Export a markdown file to M365-styled .docx:

`$ARGUMENTS`

Read if available:

- `skills/render-word/SKILL.md`

Pass the input markdown file (required), optionally the output path (defaults to
same directory and stem with .docx extension), and optionally `--toc` to include
a table of contents. The skill runs pandoc with the M365 Word reference template
to produce a .docx with Aptos fonts, Normal.dotm defaults, 1-inch margins, and
US Letter formatting.

If the reference template is missing, the skill warns and does not proceed.
