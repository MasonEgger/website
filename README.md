# Mason Egger's Website [![Deploy Status](https://api.netlify.com/api/v1/badges/18bbc38c-4f8b-4ce3-ade1-64e5ae7ae05b/deploy-status)](https://app.netlify.com/sites/trusting-bassi-a6d09d/deploys)

My personal website and blog built with [MkDocs](https://www.mkdocs.org) and [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). Features blog posts, tutorials, and conference talk archives.

## Quick Start

```bash
# Install dependencies
just install

# Start development server
just serve

# Build site
just build

# Run quality checks
just check
```

## Commands

Run `just help` to see all available commands. Key commands include:
- `just new-blog "Title"` - Create a new blog post
- `just link-check` - Check all links
- `just validate` - Validate MkDocs configuration
- `just clean` - Clean build artifacts

## Contributing

### Request a Blog Post
Have an idea for a blog post? [Request a topic](.github/ISSUE_TEMPLATE/blog-post-request.md) using my issue template.

### Report Issues
Found a bug or broken link? [Report an issue](.github/ISSUE_TEMPLATE/bug_report.md) using my bug report template.
