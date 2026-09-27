# Tern

A lightweight IDE for running coding agents side by side. Each agent gets its own git worktree; one daemon keeps every session running whether a window is open or not. Use it as a terminal app (`tern`) or as a native macOS app (`Tern.app`) — both show the same sessions.

This repository hosts Tern's releases and its Homebrew tap.

## Install

```sh
# terminal app (macOS and Linux)
brew install shubham-1994/tern/tern

# Tern.app (macOS 12+, Apple silicon and Intel)
brew install --cask shubham-1994/tern/tern-desktop
```

Without Homebrew:

```sh
curl -fsSL https://github.com/Shubham-1994/homebrew-tern/releases/latest/download/install.sh | sh
```

or download `Tern.dmg` or a `tern-<os>-<arch>` binary from [Releases](https://github.com/Shubham-1994/homebrew-tern/releases) and check it against `checksums.txt`.

`tern upgrade` updates the terminal app in place (verified by checksum).

### First launch of Tern.app

Tern.app is not notarized yet, so macOS asks before opening it the first time: right-click it in Applications and choose **Open**, or run

```sh
xattr -dr com.apple.quarantine /Applications/Tern.app
```

## Start

```sh
cd your/project
tern            # or open Tern.app and pick the folder
```

F2 starts an agent in its own worktree, F7 opens the review queue, F1 lists every key.
