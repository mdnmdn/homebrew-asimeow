# Homebrew Tap for Asimeow

This is a [Homebrew](https://brew.sh) tap for [Asimeow](https://github.com/mdnmdn/asimeow), a tool for managing macOS Time Machine exclusions for developer projects.

## What is Asimeow?

Asimeow is a utility that helps developers manage Time Machine exclusions for their development projects. It automatically identifies and excludes build artifacts, dependencies, and other large directories that don't need to be backed up, saving disk space and speeding up backups.

## Installation

```bash
# Add this tap
brew tap mdnmdn/asimeow

# Install asimeow
brew install asimeow
```

## Usage

Once installed, asimeow will run as a service every 6 hours to scan and update Time Machine exclusions.

For manual operation or to see available commands:

```bash
asimeow --help
```

## Links

- [Original Repository](https://github.com/mdnmdn/asimeow)
- [Report Issues](https://github.com/mdnmdn/asimeow/issues)

## License

MIT