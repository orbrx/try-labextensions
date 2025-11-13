<h1 align="center">
  <span>Try JupyterLab Extensions</span>
</h1>
<p align="center">
  Test JupyterLab Extensions in GitHub Codespaces • Built by <img src="https://raw.githubusercontent.com/orbrx/jupyter-marketplace/main/public/orbrx.svg" alt="Orange Bricks" height="8" valign="middle"> Orange Bricks
</p>

Launch any JupyterLab extension instantly in a cloud development environment—no local installation required!

Not affiliated with Project Jupyter. Built by Orange Bricks.

- **Extension catalog:** https://labextensions.dev
- **Feedback / issues:** https://github.com/orbrx/try-labextensions/issues/new
- **How it works:** Each branch = one extension automatically installed in Codespaces

## How It Works

Each branch in this repository corresponds to a JupyterLab extension available on PyPI. When you create a codespace from a branch, it automatically installs that extension and launches JupyterLab.

## Quick Start

1. **Browse available extensions** - Each branch name matches the PyPI package name

2. **Click a launch link** - Opens GitHub Codespaces configuration

3. **Click "Create new codespace"** - Your environment builds in ~2 minutes

4. **Start exploring** - JupyterLab opens with the extension installed

## URL Pattern

All extensions follow this pattern:

```
https://codespaces.new/orbrx/try-labextensions/tree/{extension-name}?quickstart=1&editor=jupyter
```

Replace `{extension-name}` with any PyPI package name that provides a JupyterLab extension.

## How It Works Technically

- 🌲 Each branch is identical to `main` (no code changes)
- 🏷️ The branch name = the PyPI package name
- ⚙️ `.devcontainer/install.sh` reads the current branch and runs `pip install {branch-name}`
- 🚀 GitHub Codespaces builds the environment and launches JupyterLab

## Cost & Billing

**You only pay for what you use.** Each user creates codespaces on their own GitHub account and is billed accordingly. See [GitHub Codespaces pricing](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces) for details.

Free tier: 120 core-hours/month for personal accounts.

## Contributing

This repo is automatically updated based on the extensions we find for JupyterLab Marketplace.

We welcome issues and PRs!

- **Bug report:** crashes, environment issues, installation failures
- **Feature request:** better configuration, UI improvements, new capabilities

Open an issue: https://github.com/orbrx/try-labextensions/issues/new

## Architecture

- 🐳 Base image: `quay.io/jupyter/minimal-notebook:latest`
- 🔧 Dynamic installation via branch name detection
- ⚡ Minimal configuration for fast startup
- 📦 Works with any pip-installable JupyterLab extension

## Status

Community beta. Branch list is automatically synced from JupyterLab Marketplace catalog.
If an extension fails to install, please open an issue.

## Governance & non-affiliation

This is a community project built by Orange Bricks. It is not an official Jupyter property.
Trademarks and logos are the property of their respective owners.

## License

Code in this repository is licensed under Apache-2.0.

## Acknowledgements

- Thanks to the Jupyter community and maintainers of the many extensions featured here.
- Inspired by the need to test-drive extensions before local installation.

## Support This Project

If you find this tool useful, consider supporting our work:

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/orbrx)

**Maintainer:** Konstantin Taletskiy • Orange Bricks  
**Questions?** Open an issue: https://github.com/orbrx/try-labextensions/issues/new
