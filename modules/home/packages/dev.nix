{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Lsp
    nixd # nix

    ## C / C++
    gcc
    gdb
    cmake

    ## Python
    python3

    # Windows partition support
    ntfs3g

    appimage-run
    power-profiles-daemon
  ];
}
