{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    gimp
    obs-studio
    pavucontrol

    ## Office
    libreoffice
    wpsoffice

    ## Utility
    dconf-editor
    mission-center # GUI resources monitor

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
