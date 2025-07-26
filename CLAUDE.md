# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal website for Mason Egger built with [MkDocs](https://mkdocs.org/) using a modified [MkDocs Material](https://squidfunk.github.io/mkdocs-material/) theme. The site is deployed to Netlify.

## Development Commands

### Environment Setup

```bash
# Install dependencies using uv
uv sync

# Alternative: Install dependencies directly from pyproject.toml
uv pip install -e .
```

### Development Server

```bash
# Start the development server
uv run mkdocs serve
```

### Building the Site

```bash
# Build the site to the ./site directory
uv run mkdocs build
```

## Project Structure

- `docs/` - Contains all the website content
  - `blog/` - Blog posts
  - `tutorials/` - Tutorial content
  - `speaking/` - Speaking engagements
  - `about/` - About page
  - `static/` - Static assets like images and PDFs
  - `stylesheets/` - Custom CSS
  - `javascripts/` - Custom JavaScript

- `overrides/` - Custom theme overrides for MkDocs Material

- `mkdocs.yml` - Main configuration file for MkDocs

## Content Management

New content should be added to the appropriate directory within `docs/`:

- Blog posts go in `docs/blog/posts/`
- Tutorials go in `docs/tutorials/posts/`
- Speaking engagements go in `docs/speaking/posts/`

The site uses the MkDocs Material blog plugin with custom configurations for each content type.

## Markdown Syntax

- All content is written in Markdown and uses the extensions made available by the Mkdocs Material project. 
- Always check the `mkdocs.yml` to ensure the appropriate plugin and markdown extensions are enabled before writing content using them.

## Deployment

The site is automatically deployed to Netlify when changes are pushed to the main branch.