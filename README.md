# homebrew-tap

Homebrew tap for Sam-Lane projects.

## Installation

To install tools from this tap:

```bash
# Add the tap
brew tap sam-lane/tap

# Install Jetta (JWT CLI tool)
brew install jetta
```

## Available Casks

- **jetta** - Fast JWT CLI tool for decoding and inspecting JSON Web Tokens
  - Repository: https://github.com/Sam-Lane/jetta
  - Installation: `brew install sam-lane/tap/jetta`

## Updating

```bash
# Update Homebrew and all taps
brew update

# Upgrade installed casks
brew upgrade jetta
```

## Cask Generation

Casks in this tap are automatically generated and updated by GoReleaser when new versions are released. The cask files are committed to the `Casks/` directory during the release process.

## About

This tap is maintained by Sam Lane. For issues with individual tools, please file them in the respective project repositories.
