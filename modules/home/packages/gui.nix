{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    gimp
    obs-studio
    pavucontrol

    ## Office
    libreoffice
    gnome-calculator

    ## Utility
    dconf-editor
    gnome-disk-utility
    mission-center # GUI resources monitor
  ];
}
