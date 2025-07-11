{ ... }:
{
  imports = [
    ./bootloader.nix
    ./bluetooth.nix
    ./network.nix
    ./nh.nix
    ./kde.nix
    ./pipewire.nix
    ./program.nix
    ./security.nix
    ./services.nix
    ./nvidia.nix
    ./mouse.nix
    ./steam.nix
    ./system.nix
    ./flatpak.nix
    ./user.nix
    ./wayland.nix
    ./virtualization.nix
    ./zram.nix
  ];
}
