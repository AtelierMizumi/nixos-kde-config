<h1 align="center">
    <img src="./assets/github/nixos-logo.webp" width="120px" /> 
    <br>
      My NixOS KDE Flakes 
      <p></p>
    <div align="center">
        <p align="center">
            <img src="./assets/github/color-bar-mocha.png" width="960" height="24" alt="Color Bar" />
        </p>
    </div>
       <div align="center">
        <a href="https://github.com/AtelierMizumi/nixos-kde-config/">
                    <img src="https://img.shields.io/github/repo-size/AtelierMizumi/nixos-kde-config?color=f38ba8&labelColor=1e1e2e&style=for-the-badge&logo=github&logoColor=f38ba8">
                 </a>
                 <a href="https://nixos.org">
                    <img src="https://img.shields.io/badge/NixOS-unstable-blue.svg?style=for-the-badge&labelColor=1e1e2e&logo=NixOS&logoColor=89b4fa&color=89b4fa">
                 </a>
                 <a href="https://github.com/AtelierMizumi/nixos-kde-config/blob/main/LICENSE">
                    <img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&colorA=1e1e2e&colorB=a6e3a1&logo=unlicense&logoColor=a6e3a1&"/>
                 </a>
       </div>
      <br>
   </div>
</h1>

# 🗃️ Overview

## 📚 Layout

-   [flake.nix](flake.nix) base of the configuration
-   [hosts](hosts) 🌳 per-host configurations that contain machine specific configurations
    - [laptop](hosts/laptop/) 💻 Laptop specific configuration
-   [modules](modules) 🍱 modularized NixOS configurations
    -   [core](modules/core/) ⚙️ Core NixOS configuration
    -   [home](modules/home/) 🏠 my [Home-Manager](https://github.com/nix-community/home-manager) config
-   [assets](assets/) 🌄 wallpapers and assets collection

## 📓 Components
|                             | NixOS + KDE Plasma 6                                                                          |
| --------------------------- | :---------------------------------------------------------------------------------------------:|
| **Desktop Environment**     | [KDE Plasma 6][KDE Plasma 6] |
| **Window Manager**          | [KWin][KWin] |
| **Application Launcher**    | [KDE Kickoff][KDE Kickoff] |
| **Terminal Emulator**       | [Konsole][Konsole] |
| **Shell**                   | [Fish][Fish] |
| **Text Editor**             | [VSCode][VSCode] + [Neovim][Neovim] |
| **Network Management**      | [NetworkManager][NetworkManager] + [Plasma NetworkManager][Plasma NetworkManager] |
| **System Monitor**          | [Mission Center][Mission Center] |
| **File Manager**            | [Dolphin][Dolphin] |
| **Fonts**                   | [Noto Sans][Noto Sans] + [Noto Mono Nerd Font][Noto Mono Nerd Font] |
| **Color Scheme**            | [Breeze Dark][Breeze Dark] |
| **Cursor**                  | [Bibata-Modern-Ice][Bibata-Modern-Ice] |
| **Icons**                   | [WhiteSur][WhiteSur] |
| **Lockscreen**              | [KScreenLocker][KScreenLocker] |
| **Media Player**            | [mpv][mpv] |
| **Screenshot Software**     | [Spectacle][Spectacle] |
| **Browser**                 | [Zen Browser][Zen Browser] |
| **Chat**                    | [Vesktop][Vesktop] |

## 📝 Shell aliases

<details>
<summary>
Utils (EXPAND)
</summary>

- ```l```     $\rightarrow$ ```ls -lh --color=auto```
- ```c```     $\rightarrow$ ```clear```
- ```disk```  $\rightarrow$ ```lsblk -f```
- ```ff```    $\rightarrow$ ```fastfetch```
- ```nit```   $\rightarrow$ ```nitch```

</details>

<details>
<summary>
NixOS (EXPAND)
</summary>

- ```nh os test```     $\rightarrow$ Test NixOS configuration
- ```nh os switch```   $\rightarrow$ Switch to new NixOS configuration
- ```nh clean all```   $\rightarrow$ Clean old generations
- ```nix flake update``` $\rightarrow$ Update flake inputs

</details>

## ⌨️ Keybinds

### KDE Plasma Shortcuts

<details>
<summary>
Custom Keybindings 
</summary>

##### Terminal
- ```Meta+Alt+K``` Launch Konsole

##### Window Management (Tiling-style)
- ```Meta+H``` Switch Window Left
- ```Meta+J``` Switch Window Down  
- ```Meta+K``` Switch Window Up
- ```Meta+L``` Switch Window Right
- ```Meta+,``` Expose (Show all windows)
- ```Meta+Tab``` Toggle Overview
- ```Meta+W``` Quit Application

##### Virtual Desktops
- ```Meta+1-9``` Switch to Desktop 1-9
- ```Meta+Shift+1-9``` Move Window to Desktop 1-9

##### System
- ```Meta+Ctrl+Alt+L``` Lock Session

</details>

# 🚀 Installation 

> [!CAUTION]
> Applying custom configurations, especially those related to your operating system, can have unexpected consequences and may interfere with your system's normal behavior. While I have tested these configurations on my own setup, there is no guarantee that they will work flawlessly for you.
> **I am not responsible for any issues that may arise from using this configuration.**

> [!NOTE]
> It is highly recommended to review the configuration contents and make necessary modifications to customize it to your needs before attempting the installation.

#### 1. **Install NixOS**

First install NixOS using any [graphical ISO image](https://nixos.org/download.html#nixos-iso). 

#### 2. **Clone the repo**

```bash
nix-shell -p git
git clone https://github.com/AtelierMizumi/nixos-kde-config
cd nixos-kde-config
```

#### 3. **Update hardware configuration**

Copy your hardware configuration:
```bash
sudo cp /etc/nixos/hardware-configuration.nix hosts/laptop/hardware-configuration.nix
```

> [!NOTE]
> It is recommend to see my own hardware configurations, I've made some custom changes in there that may benefits yours

#### 4. **Customize the configuration**

Edit the configuration to match your needs:
- Update user information in `modules/core/user.nix`
- Modify git configuration in `modules/home/git.nix`
- Adjust hardware-specific settings as needed

#### 5. **Build and switch**

```bash
sudo nixos-rebuild switch --flake .#laptop
```

#### 6. **Reboot**

After rebooting, you should be greeted by the KDE Plasma desktop environment with all the custom configurations applied.

## 🛠️ Configuration Highlights

### Plasma Manager Configuration
- Custom panel layout with application launcher, task manager, and system tray
- Configured shortcuts for tiling-like window management
- Power management settings optimized for laptops
- Custom window rules for specific applications

### Home Manager Modules
- **Browser**: Zen Browser with custom configuration
- **Terminal**: Konsole with custom settings
- **Development**: VSCode, Neovim, and development tools
- **Multimedia**: Media players and audio tools
- **Gaming**: Steam, emulators, and gaming utilities

### Core System Configuration
- **Boot**: systemd-boot with configuration limit
- **Audio**: PipeWire with ALSA and PulseAudio compatibility  
- **Graphics**: NVIDIA support with proper Wayland configuration
- **Virtualization**: KVM/QEMU support with virt-manager
- **Input**: Fcitx5 for international input methods

# 👥 Credits

This configuration is inspired by and learned from various sources:

- [Frost-Phoenix/nixos-config](https://github.com/Frost-Phoenix/nixos-config): Main inspiration for structure and styling
- [nix-community/plasma-manager](https://github.com/nix-community/plasma-manager): KDE Plasma configuration management
- [NixOS Community](https://nixos.org/): For the amazing NixOS ecosystem
- [Catppuccin Mocha color theme](https://catppuccin.com/palette/): Nice dark theme with good contrast for my VSCode config

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>

<!-- end of page, send back to the top -->

<div align="right">
  <a href="#readme">Back to the Top</a>
</div>

<!-- Links -->
[KDE Plasma 6]: https://kde.org/plasma-desktop/
[KWin]: https://userbase.kde.org/KWin
[KDE Kickoff]: https://userbase.kde.org/Plasma/Kickoff
[Konsole]: https://konsole.kde.org/
[Fish]: https://fishshell.com/
[VSCode]: https://code.visualstudio.com/
[Neovim]: https://neovim.io/
[NetworkManager]: https://wiki.gnome.org/Projects/NetworkManager
[Plasma NetworkManager]: https://userbase.kde.org/Plasma/NetworkManager
[Mission Center]: https://gitlab.com/mission-center-devs/mission-center
[Dolphin]: https://apps.kde.org/dolphin/
[Noto Sans]: https://fonts.google.com/noto/specimen/Noto+Sans
[Noto Mono Nerd Font]: https://www.nerdfonts.com/
[Breeze Dark]: https://kde.org/announcements/plasma/5/5.0.0/
[Bibata-Modern-Ice]: https://www.gnome-look.org/p/1197198
[WhiteSur]: https://www.gnome-look.org/p/1403328
[KScreenLocker]: https://userbase.kde.org/KScreenLocker
[mpv]: https://mpv.io/
[Spectacle]: https://apps.kde.org/spectacle/
[Zen Browser]: https://zen-browser.app/
[Vesktop]: https://github.com/Vencord/Vesktop
