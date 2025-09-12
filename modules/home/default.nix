{ ... }:
{
  imports = [
    ./android-studio.nix # android studio
    ./browser.nix # firefox based browser
    ./cava.nix # audio visualizer
    ./davinci-resolve.nix # video editing
    ./discord.nix # discord
    ./docker.nix # docker configuration
    ./fastfetch.nix # fetch tool
    ./fcitx5.nix # input method
    ./fonts.nix # fonts settings
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./gtk.nix # gtk configuration
    ./notion.nix # notion
    ./xorg.nix # xorg configuration
    ./kdeconnect.nix # kdeconnect
    ./kitty.nix # terminal
    ./nix-search/nix-search.nix # TUI to search nixpkgs
    ./nvim.nix # neovim configuration
    ./packages # other packages
    ./osu.nix # osu! lazer
    # ./proton-vpn.nix # protonvpn gui
    ./qt-creator.nix # qt creator
    ./plasma-manager.nix
    ./jetbrains.nix # that unfree ide
    ./ssh.nix
    ./vscode # vscode fork
    ./xdg-mimes.nix # xdg config
  ];
}
