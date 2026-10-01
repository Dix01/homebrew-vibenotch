# VibeNotch beta

Every coding agent, live in your notch. VibeNotch is a native Mac app for monitoring coding agents, tracking usage, and handling approval requests.

## Install

With Homebrew installed:

```sh
brew install --cask dix01/vibenotch/vibenotch
```

Requires macOS 14 or later. The download supports both Apple Silicon and Intel Macs.

Open **VibeNotch** from Applications, then choose **Connect agents**.

Version 1.0.1 and later are signed with Developer ID and notarized by Apple.

You can also download the app ZIP from [Releases](https://github.com/Dix01/homebrew-vibenotch/releases).

## Updates and uninstall

```sh
brew upgrade --cask dix01/vibenotch/vibenotch
brew uninstall --cask vibenotch
```

Before uninstalling, remove VibeNotch's hooks with `/Applications/VibeNotch.app/Contents/MacOS/VibeNotch --disconnect`. Normal uninstall keeps your settings; `brew uninstall --zap --cask vibenotch` also removes VibeNotch settings and local data.

## About this repository

This repository distributes the Homebrew cask and compiled app releases. The application's source code is not included.
