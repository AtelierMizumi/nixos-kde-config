{ pkgs, ... }:
{

  programs.mpv = {
    enable = true;

    package = (
      pkgs.mpv-unwrapped.wrapper {
        scripts = with pkgs.mpvScripts; [
          uosc
          sponsorblock
        ];

        mpv = pkgs.mpv-unwrapped.override {
          waylandSupport = true;
        };
      }
    );

    config = {
      profile = "high-quality";
      ytdl-format = "bestvideo+bestaudio";
      cache-default = 4000000;
    };
  };

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
    rar

    # Stress testing
    s-tui

    # vkcube
    vulkan-tools

    # fuse
    fuse

    ## Fun / screensaver
    cbonsai
    cmatrix
    fortune

    # iPhone file system access
    ifuse
    libimobiledevice

    # Command history
    atuin

    ## Multimedia
    ani-cli

    ## Utilities
    yt-dlp-light
    ffmpeg
    killall
    openssl
    pamixer # pulseaudio command line mixer
    unzip
    wget
    xdg-utils
    mlocate
  ];
}
