# NixOS KDE Configuration

This is a NixOS configuration with KDE desktop environment.

## Features

- VSCode with Catppuccin theme
- Custom font configurations using SF Pro Display and SF Mono

All fonts are available with Nerd Font patches for terminal use.

## Installation

1. Clone this repository
2. Update the flake inputs: `nix flake update`
3. Build and switch: `sudo nixos-rebuild switch --flake .#laptop`
