# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website for Mason Egger built with [MkDocs](https://www.mkdocs.org/) using a modified [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) theme. The site is deployed to Netlify.

## Development Commands

### Using `just` (Recommended)
The project uses `just` as a task runner. Key commands:

```bash
# Install dependencies
just install

# Start development server with hot reload
just serve

# Build the site
just build

# Check all links in the site
just link-check

# Validate MkDocs configuration
just validate

# Run all quality checks (build + link check)
just check

# Create a new blog post
just new-blog "Your Blog Title Here"

# Clean generated files and cache
just clean

# Show available commands
just help
```

### Direct Commands
```bash
# Install dependencies using uv
uv sync

# Start the development server
uv run mkdocs serve

# Build the site to the ./site directory
uv run mkdocs build
```

## Architecture & Structure

### Content Organization
The site content is organized into distinct sections, each using its own instance of the MkDocs Material blog plugin:

- `docs/blog/posts/` - Personal blog posts (numbered 000-011+)
- `docs/tutorials/posts/` - Technical tutorials
- `docs/speaking/posts/` - Conference talks and presentations
- `docs/speaking/docs/` - PDF slides for download
- `docs/static/` - Images and other static assets

### Theme Customization
The site uses a custom color scheme and theme overrides:

- **Color Palette**: Nature-inspired with cream (`#FEFAE0`), dark green (`#283618`), and burnt orange (`#BC6C25`)
- **Overrides** in `/overrides/`:
  - `home.html` - Removes sidebars on homepage
  - `blog.html`, `blog-post.html` - Custom blog layouts
  - `partials/post.html` - Post component customization
- **Custom CSS** in `docs/stylesheets/extra.css` - Defines hero sections, buttons, and color scheme

### Homepage Layout
The homepage (`docs/index.md`) uses custom CSS classes for layout:

- `.hero-section` - Compact hero with profile image, name, tagline, and bio
- `.two-column-container` - Flexbox container for side-by-side sections on large screens, stacks vertically on mobile (≤768px)
- `.content-column` - Child of two-column-container, used for Recent Content and Featured Content sections
- `.content-section` - Standard full-width content section (used for "What I'm Working On")
- `.content-list` - Styled list items with terracotta left border

### Plugin Configuration
The `mkdocs.yml` configures multiple blog instances with different settings:
- Blog: Standard blog with categories and tags
- Tutorials: Tutorial posts with their own archive
- Speaking: Conference talks with associated PDFs

### Content Features
- **Post Metadata**: Each post should include title, description, date, categories, tags, and authors
- **Excerpts**: Use `<!-- more -->` to define post excerpts
- **Draft Support**: Set `draft: true` in post metadata to hide from publication
- **RSS Feeds**: Automatically generated for all content types
- **Social Cards**: Auto-generated with custom colors for social media sharing

### Markdown Extensions
The site supports advanced Markdown features:
- Code blocks with syntax highlighting and line numbers
- Mermaid diagrams
- Admonitions (callout boxes)
- Mathematical notation (MathJax)
- Tabbed content
- Task lists

## Deployment

The site automatically deploys to Netlify when changes are pushed to the main branch. GitHub Actions builds the site and publishes to a `site` branch.

## Working with Content

When creating new content:
1. Use the appropriate directory for the content type
2. Include all required metadata in the frontmatter
3. Follow existing naming conventions (e.g., numbered blog posts)
4. Store images in `docs/static/img/blog/[post-name]/`
5. Use relative paths for internal links
6. Run `just check` before committing to validate build and links
