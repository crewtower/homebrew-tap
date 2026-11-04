# CrewTower Homebrew Tap

Homebrew tap for [CrewTower](https://crewtower.app/), a macOS notch panel to monitor and approve AI coding agents.

## Install

```sh
brew tap crewtower/tap
brew trust crewtower/tap
brew install --cask crewtower
```

Homebrew asks you to trust third-party taps before it loads them, which is what the second line does.

CrewTower updates itself in-app.
Requires macOS 15 (Sequoia) or later.

## Uninstall

```sh
brew uninstall --cask crewtower
```

Add `--zap` to also remove app settings and caches.
