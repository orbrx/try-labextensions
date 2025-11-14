<h1 align="center">
  <span>Try JupyterLab Extensions</span>
</h1>
<p align="center">
  Test JupyterLab Extensions in GitHub Codespaces and Binder • Built by <img src="https://raw.githubusercontent.com/orbrx/jupyter-marketplace/main/public/orbrx.svg" alt="Orange Bricks" height="8" valign="middle"> Orange Bricks
</p>

Launch any JupyterLab extension instantly in a cloud development environment—no local installation required!

Not affiliated with Project Jupyter. Built by Orange Bricks.

- **Extension catalog:** https://labextensions.dev
- **Feedback / issues:** https://github.com/orbrx/try-labextensions/issues/new
- **How it works:** Each branch = one extension automatically installed

## How It Works

Each branch in this repository corresponds to a JupyterLab extension available on PyPI. When you launch from a branch, it automatically installs that extension and opens JupyterLab.

Choose your platform:
- **GitHub Codespaces**: Persistent environment, more resources, requires GitHub account
- **Binder**: No login required, free, ephemeral (sessions timeout after inactivity)

## Quick Start

### Option 1: GitHub Codespaces

1. Click a Codespaces launch link
2. Click "Create new codespace" on the configuration page
3. Wait ~2 minutes for environment to build
4. JupyterLab opens with the extension installed

**Example extensions:**
- [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/orbrx/try-labextensions/tree/jupyter-ai?quickstart=1&editor=jupyter) jupyter-ai - AI-powered code assistance
- [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/orbrx/try-labextensions/tree/jupyterlab-git?quickstart=1&editor=jupyter) jupyterlab-git - Git integration
- [![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/orbrx/try-labextensions/tree/jupyterlab-night?quickstart=1&editor=jupyter) jupyterlab-night - Dark theme

**Cost:** Free tier (120 core-hours/month) or pay-as-you-go. [Pricing details](https://docs.github.com/en/billing/managing-billing-for-github-codespaces/about-billing-for-github-codespaces)

### Option 2: Binder (Quick Try)

1. Click a Binder launch badge
2. Wait ~5-10 minutes for first build (cached builds launch in <1 minute)
3. JupyterLab opens with the extension installed

**Example extensions:**
- [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/orbrx/try-labextensions/jupyter-ai?urlpath=lab) jupyter-ai
- [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/orbrx/try-labextensions/jupyterlab-git?urlpath=lab) jupyterlab-git
- [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/orbrx/try-labextensions/jupyterlab-night?urlpath=lab) jupyterlab-night

**Cost:** Free (community-funded)  
**Limits:** 10-minute idle timeout, 12-hour maximum session

> 💙 **Support Binder**: mybinder.org is free thanks to community support and generous sponsors. Consider [donating to Project Jupyter](https://jupyter.org/about#donate) to help keep this valuable resource available for everyone.

## URL Patterns

### GitHub Codespaces
```
https://codespaces.new/orbrx/try-labextensions/tree/{extension-name}?quickstart=1&editor=jupyter
```

### Binder
```
https://mybinder.org/v2/gh/orbrx/try-labextensions/{extension-name}?urlpath=lab
```

Replace `{extension-name}` with any PyPI package name that provides a JupyterLab extension.

## How It Works Technically

### The Branch-Based Solution

- 🌲 **All branches are identical to `main`** (no code changes between branches!)
- 🏷️ **Branch name = PyPI package name** (e.g., branch `jupyter-ai` → `pip install jupyter-ai`)
- 🔍 **Platform-specific detection:**
  - **Codespaces**: `.devcontainer/install.sh` uses `git rev-parse --abbrev-ref HEAD`
  - **Binder**: `binder/start` extracts branch from `$BINDER_REQUEST` environment variable
- 🚀 **Automatic installation**: Extension installs when environment launches

### Architecture Details

- 🐳 **Base image**: `quay.io/jupyter/minimal-notebook:latest`
- ⚡ **Codespaces**: Installs during `postCreateCommand` (build time)
- ⚡ **Binder**: Installs during container startup (runtime)
- 📦 **Compatibility**: Works with any pip-installable JupyterLab extension

## Comparison: Codespaces vs Binder

| Feature | GitHub Codespaces | Binder |
|---------|------------------|--------|
| **Login required** | Yes (GitHub) | No |
| **Cost** | Free tier + paid | Free |
| **Build time** | 2-3 minutes | 5-10 min (first), <1 min (cached) |
| **Session duration** | Hours (configurable) | 10 min idle, 12 hr max |
| **Persistence** | Files persist | Ephemeral |
| **Resources** | 2-32 cores | ~1-2GB RAM |
| **Best for** | Serious testing, development | Quick demos, workshops |

## Contributing

This repo is automatically updated based on the extensions we find for JupyterLab Marketplace.

We welcome issues and PRs!

- **Bug report:** crashes, environment issues, installation failures
- **Feature request:** better configuration, UI improvements, new capabilities

Open an issue: https://github.com/orbrx/try-labextensions/issues/new

## Status

Community beta. Branch list is automatically synced from JupyterLab Marketplace catalog.
If an extension fails to install, please open an issue.

## Governance & Non-Affiliation

This is a community project built by Orange Bricks. It is not an official Jupyter property.
Trademarks and logos are the property of their respective owners.

## License

Code in this repository is licensed under Apache-2.0.

## Acknowledgements

- Thanks to the Jupyter community and maintainers of the many extensions featured here
- Inspired by the need to test-drive extensions before local installation
- Built with [repo2docker](https://github.com/jupyterhub/repo2docker) (Binder) and [Dev Containers](https://containers.dev/) (Codespaces)

## Support This Project

If you find this tool useful, consider supporting our work:

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/orbrx)

**Maintainer:** Konstantin Taletskiy • Orange Bricks  
**Questions?** Open an issue: https://github.com/orbrx/try-labextensions/issues/new