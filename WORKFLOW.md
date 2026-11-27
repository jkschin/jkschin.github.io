# Site Workflow & Cheat Sheet

Personal reference for writing posts, previewing, formatting, and deploying `jkschin.com`.

## 1. Create a New Blog Post

Use `shellscripts/new_post.sh` to scaffold a post in `_posts/` (or `_drafts/` with `--draft`).

```bash
# Standard post (default: layout: post) — best for personal/reflective writing
./shellscripts/new_post.sh "Thoughts on X" -t personal -d "Short summary."

# Technical Distill.pub post (layout: distill + matching assets/bibliography/*.bib)
./shellscripts/new_post.sh "Understanding Attention" --distill -t code -d "Deep dive into attention."

# Create in _drafts/ instead of _posts/
./shellscripts/new_post.sh "Work in Progress" --draft

# Auto-open in your editor ($EDITOR or VS Code)
./shellscripts/new_post.sh "My Post" -o

# Interactive mode (prompts for title, layout, tags, and description)
./shellscripts/new_post.sh
```

### Distill.pub Quick Reference (`--distill` posts)

- **Citations:** Add BibTeX entries to the generated `assets/bibliography/YYYY-MM-DD-slug.bib` and cite inline with `<d-cite key="bibtex_key"></d-cite>`.
- **Footnotes:** `<d-footnote>Hoverable note text.</d-footnote>`
- **Table of Contents:** List each heading under `toc:` in the frontmatter:
  ```yaml
  toc:
    - name: Introduction
    - name: Method
      subsections:
        - name: Formulation
  ```
- **Wide / Margin Layouts:** Wrap figures or notes in `<div class="l-body-outset">`, `<div class="l-page">`, or `<aside class="l-gutter">`.
- **Math:** Inline `$...$` and display `$$...$$`.

## 2. Local Preview

Start the local Jekyll server at `http://127.0.0.1:4000`:

```bash
./shellscripts/localdev.sh
```

To include `_drafts/` while previewing locally:

```bash
bundle exec jekyll serve --drafts
```

_Note: Restart the server after editing `_config.yml` or `_bibliography/papers.bib`._

## 3. Format with Prettier

GitHub Actions checks formatting on every push (`.github/workflows/prettier.yml`).

```bash
# Format all files in the repo
npx prettier . --write

# Check formatting without modifying files
npx prettier . --check
```

## 4. Deploy to GitHub Pages

Commit and push to `master`—GitHub Actions (`.github/workflows/deploy.yml`) automatically builds and deploys the live site:

```bash
./shellscripts/deploy.sh
```

Or manually:

```bash
git status
git add -A
git commit -m "Your commit message"
git push origin master
```

## 5. Update About Page & Social Links

- **Bio & homepage sections:** Edit `_pages/about.md` (toggle `news`, `selected_papers`, `social`, or edit `subtitle` and `profile.more_info`).
- **Social icons (X, LinkedIn, Google Scholar, GitHub, etc.):** Edit the `Social integration` section in `_config.yml` (e.g., `x_username`, `linkedin_username`, `scholar_userid`).

## 6. Publications Page (Currently Disabled)

The publications page is temporarily turned off.

- **To re-enable:**
  1. Remove `- _pages/publications.md` from `exclude:` in `_config.yml`.
  2. Set `nav: true` in `_pages/publications.md`.
- **Pull latest papers from Google Scholar:**
  ```bash
  python3 bin/fetch_scholar.py
  ```
  _Warning: `fetch_scholar.py` currently overwrites `_bibliography/papers.bib`, so run it before adding manual fields like `preview` or `code`._
- **Add paper thumbnails:** Save images in `assets/img/publication_preview/` and add `preview={filename.png},` to the corresponding entry in `_bibliography/papers.bib`.
