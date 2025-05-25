{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Utils
    gamemode
    mangohud
    goverlay
    wine
    gamescope
    winetricks
    protontricks
    # inputs.nix-gaming.packages.${pkgs.system}.wine-ge

    ## Minecraft
    prismlauncher
    # atlauncher
    # multimc

    ## Celeste
    # celeste-classic
    # celeste-classic-pm

    ## Doom
    # gzdoom
    # crispy-doom

    ## Emulation
    # sameboy
    # snes9x
    # cemu
    # dolphin-emu
  ];
}
