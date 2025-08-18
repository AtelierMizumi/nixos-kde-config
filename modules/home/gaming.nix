{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Utils
    gamemode
    mangohud
    goverlay
    wine
    winetricks
    protontricks
    protonup-qt
    # inputs.nix-gaming.packages.${pkgs.system}.wine-ge

    # mouse setup
    piper

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
    ## yuzu
    # dolphin-emu
    pcsx2
    retroarch-free
  ];
}
