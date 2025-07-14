{ pkgs, username, ... }:
{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us";
    };
    displayManager.sddm.enable = true;
    displayManager.sddm.settings.General.DisplayServer = "wayland";
    displayManager.sddm.wayland.enable = true;
    desktopManager.plasma6.enable = true;
  };

  environment.systemPackages = with pkgs.kdePackages; [
    xdg-desktop-portal-kde
    kcalc
    breeze-icons
    kdenlive
    filelight
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    elisa
  ];

  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
