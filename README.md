# croncode-docs

The documentation and project blog for **Croncode**, a minimalist AI code generator for recurring scripts.

## Project Links
- **Live Documentation:** [www.croncode.net](https://www.croncode.net)
- **Application:** [croncode.ai](https://croncode.ai)
- **Source Repository:** [github.com/aaronbronow/croncode](https://github.com/aaronbronow/croncode)

## Local Development

This site is built with Jekyll using the [Chirpy](https://github.com/cotes2020/jekyll-theme-chirpy) theme.

### Prerequisites
- **Ruby:** 3.3.0
- **Node.js:** LTS

### Setup & Preview
1. Install dependencies:
   ```bash
   make install
   ```
2. Build assets and serve locally:
   ```bash
   make build
   make serve
   ```
   The site will be available at `http://127.0.0.1:4000/`.

## Deployment
This site is automatically deployed to GitHub Pages via GitHub Actions whenever changes are pushed to the `main` branch.
