{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    gimp
    pavucontrol

    ## Office
    libreoffice
    wpsoffice

    # Stress test GPU
    unigine-heaven

    ## Utility
    dconf-editor
    mission-center # GUI resources monitor
    gparted
    qbittorrent

    # translation
    dialect
  ];

  programs.obs-studio = {
    enable = true;
    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
    ];
  };
}
