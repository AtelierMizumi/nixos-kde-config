{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.protonvpn-gui
  ];
}
