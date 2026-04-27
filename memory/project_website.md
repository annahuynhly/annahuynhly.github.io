---
name: Personal website redesign
description: New blue-themed HTML/CSS website replacing the Quarto-built site
type: project
---

The personal website at annahuynhly.github.io was redesigned from Quarto to plain HTML/CSS in April 2026 using a blue mockup the user provided.

**New files in docs/ (the GitHub Pages output folder):**
- `docs/site.css` — shared stylesheet for all new pages
- `docs/index.html` — home/landing page (replaced old redirect)
- `docs/about.html` — about page
- `docs/cv.html` — education & experience
- `docs/publications.html` — publications & conferences
- `docs/awards.html` — scholarships & awards
- `docs/teaching.html` — teaching overview with links to old pages

**Old files kept intact (backup):**
- `docs/pages/` — all old Quarto-rendered HTML pages still accessible
- `pages/` — Quarto source .qmd files still in repo root

**Why:** User wanted a more modern look using the blue mockup. Quarto no longer used for main site.

**How to apply:** When editing the site, edit the HTML/CSS files in docs/ directly. No Quarto render step needed. To tweak styles, edit `docs/site.css`.
