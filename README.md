# Aman-senpai Homebrew Tap

A collection of macOS menu bar apps by [aman-senpai](https://github.com/aman-senpai).

## Available Casks

| Cask | Description | Install |
|------|-------------|---------|
| [androlaunch](https://github.com/aman-senpai/AndroLaunch) | Android device management — screen mirroring, app management, file explorer, and emulator control | `brew install --cask androlaunch` |
| [notesbar](https://github.com/aman-senpai/NotesBar) | Quick access to Apple Notes and Obsidian from the menu bar | `brew install --cask notesbar` |
| [zenshelf](https://github.com/aman-senpai/Zenshelf) | Menu bar companion for Zen Browser | `brew install --cask zenshelf` |

## Installation

Tap this repository and install any cask:

```bash
brew tap aman-senpai/tap
brew install --cask <cask-name>
```

Or install directly without tapping first:

```bash
brew install --cask aman-senpai/tap/<cask-name>
```

Or in a `Brewfile`:

```ruby
tap "aman-senpai/tap"
cask "androlaunch"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
