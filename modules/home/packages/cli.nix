{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Better core utils
    ncdu # disk space
    ripgrep # grep replacement
    tldr

    ## Monitoring / fetch
    htop
    nitch # systhem fetch util
    wavemon # monitoring for wireless network devices
    nvtopPackages.full
    zenith-nvidia

    # vkcube
    vulkan-tools

    ## Fun / screensaver
    cbonsai
    cmatrix
    fortune

    ## Multimedia
    mpv

    ## Utilities
    yt-dlp-light
    ffmpeg
    killall
    openssl
    pamixer # pulseaudio command line mixer
    unzip
    wget
    xdg-utils
  ];
}
