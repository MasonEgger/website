# Mason Egger's Website Justfile
# Available commands for MkDocs website development

# Default recipe - show available commands
default:
    @just --list

# Install dependencies using uv
install:
    uv sync

# Build the documentation site
build:
    uv run mkdocs build

# Run local development server with hot reload
serve:
    uv run mkdocs serve

# Run local development server on specific port
serve-port PORT="8001":
    uv run mkdocs serve --dev-addr=127.0.0.1:{{PORT}}

# Check all links using lychee with caching (avoids 429 errors)
link-check:
    lychee --cache --verbose --max-concurrency 8 .

# Clean generated files and cache
clean:
    rm -rf site/
    rm -rf .lycheecache/
    rm -rf __pycache__/
    find . -name "*.pyc" -delete
    find . -name ".DS_Store" -delete

# Run all quality checks (build + link check)
check: build link-check

# Validate mkdocs configuration
validate:
    uv run mkdocs build --strict

# Create a new blog post with template
new-blog TITLE:
    #!/usr/bin/env bash
    ~/.claude/local/claude --allowedTools "Read, Write" -p 'Create a new blog post draft in the appropriate place with the appropriate frontmatter, naming format, with the title "{{TITLE}}". Add your best guess for tags and categories based on the title. The categories and tags sections can't be blank, so if you can't think of something, put DRAFT as the option. You are not to write ANY content. Just set things up for me. This blog will start off unpublished, so set `draft: true` in the frontmatter.'

# Show help for common workflows
help:
    @echo "=== Mason Egger's Website - Available Commands ==="
    @echo ""
    @echo "== Setup & Development =="
    @echo "  just install          Install dependencies using uv"
    @echo "  just serve            Start development server (port 8000)"
    @echo "  just serve-port 8001  Start dev server on specific port"
    @echo ""
    @echo "== Building & Validation =="
    @echo "  just build            Build the documentation site"
    @echo "  just validate         Build with strict validation"
    @echo "  just link-check       Check all links (with caching)"
    @echo "  just check            Run all quality checks"
    @echo ""
    @echo "== Content Creation =="
    @echo "  just new-blog 'Title' Create a new blog post draft"
    @echo ""
    @echo "== Utilities =="
    @echo "  just clean            Clean generated files and cache"
    @echo "  just help             Show this help message"
    @echo ""
    @echo "=== Common Workflows ==="
    @echo "Development:     just install && just serve"
    @echo "Pre-publish:     just check"
    @echo "New post:        just new-blog 'My Post Title'"
    @echo "Clean start:     just clean && just build"
    @echo "Full validation: just validate && just link-check"
