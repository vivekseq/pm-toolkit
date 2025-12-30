#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="pm-toolkit"

# Create repo root
#mkdir -p "$REPO_NAME"
#cd "$REPO_NAME"

# Create directories
mkdir -p docs/01-reading-list \
         docs/02-ai-tool-stack \
         docs/03-workflows \
         docs/04-prompts \
         docs/05-templates \
         docs/06-examples \
         assets/images

# Create starter files
touch README.md \
      CONTRIBUTING.md \
      CODEOWNERS \
      docs/00-start-here.md \
      docs/01-reading-list/README.md \
      docs/01-reading-list/strategy.md \
      docs/01-reading-list/discovery.md \
      docs/01-reading-list/execution.md \
      docs/01-reading-list/metrics.md \
      docs/01-reading-list/ai-product.md \
      docs/01-reading-list/leadership.md \
      docs/02-ai-tool-stack/README.md \
      docs/02-ai-tool-stack/chatgpt.md \
      docs/02-ai-tool-stack/chatgpt-cheatsheet.md \
      docs/02-ai-tool-stack/prototyping.md \
      docs/02-ai-tool-stack/research.md \
      docs/02-ai-tool-stack/writing.md \
      docs/02-ai-tool-stack/analytics.md \
      docs/02-ai-tool-stack/meeting-notes.md \
      docs/02-ai-tool-stack/voice-tools.md \
      docs/03-workflows/README.md \
      docs/03-workflows/prd.md \
      docs/03-workflows/roadmap.md \
      docs/03-workflows/user-research.md \
      docs/03-workflows/experiment-design.md \
      docs/03-workflows/stakeholder-updates.md \
      docs/04-prompts/README.md \
      docs/04-prompts/pm-core.md \
      docs/04-prompts/discovery.md \
      docs/04-prompts/prd-writing.md \
      docs/04-prompts/strategy.md \
      docs/04-prompts/exec-comms.md \
      docs/04-prompts/data-analysis.md \
      docs/04-prompts/prototyping.md \
      docs/05-templates/README.md \
      docs/05-templates/prd-template.md \
      docs/05-templates/one-pager.md \
      docs/05-templates/experiment-brief.md \
      docs/05-templates/launch-checklist.md \
      docs/05-templates/weekly-update.md \
      docs/06-examples/README.md \
      docs/06-examples/great-prds.md \
      docs/06-examples/great-memos.md \
      docs/06-examples/great-roadmaps.md

# Add minimal starter content (optional but helpful)
cat > README.md <<'EOF'
# pm-toolkit

A curated toolkit for Product Managers:
- Reading lists (best blogs/articles)
- AI tool stack for PM work
- ChatGPT tips + prompt library
- Prototyping workflows (incl. voice)

## Start here
- docs/00-start-here.md

## Contents
- docs/01-reading-list/
- docs/02-ai-tool-stack/
- docs/03-workflows/
- docs/04-prompts/
- docs/05-templates/
- docs/06-examples/
EOF

cat > docs/00-start-here.md <<'EOF'
# Start here

## What this is
A practical PM toolkit with curated reading, repeatable workflows, and AI-assisted ways of working.

## Golden paths
- Writing a PRD → docs/03-workflows/prd.md + docs/05-templates/prd-template.md + docs/04-prompts/prd-writing.md
- Prototyping fast → docs/02-ai-tool-stack/prototyping.md + docs/02-ai-tool-stack/voice-tools.md
- Leveling up → docs/01-reading-list/README.md
EOF

cat > CONTRIBUTING.md <<'EOF'
# Contributing

## Guidelines
- No link dumps. Each link needs:
  - Why it matters (1–2 lines)
  - Tags
  - Time to read
  - When to use it

## Structure
Prefer adding to an existing page in docs/ rather than creating new top-level categories.
EOF

cat > CODEOWNERS <<'EOF'
# Example: make yourself owner of everything
* @your-github-handle
EOF

echo "✅ Created $REPO_NAME structure."
echo "Next: cd $REPO_NAME && git init"
