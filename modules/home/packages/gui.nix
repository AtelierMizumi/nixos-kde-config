{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    gimp
    obs-studio
    pavucontrol

    ## Office
    libreoffice

    ## Utility
    dconf-editor
    mission-center # GUI resources monitor

    # translation
    dialect
  ];
}
