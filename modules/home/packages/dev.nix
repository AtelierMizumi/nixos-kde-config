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
    python312Packages.ipython
  ];
}
