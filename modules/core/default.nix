{ ... }:
{
  imports = [
    ./bootloader.nix
    ./bluetooth.nix
    ./cloudflare-warp.nix
    ./network.nix
    ./nh.nix
    ./kde.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./nvidia.nix
    ./mouse.nix
    ./steam.nix
    ./system.nix
    ./flatpak.nix
    ./user.nix
    ./sched-ext.nix
    ./opentabletdriver.nix
    ./wayland.nix
    ./virtualization.nix
    ./zram.nix
  ];
}
