{ ... }:
{
  imports = [
    ./browser.nix # firefox based browser
    ./cava.nix # audio visualizer
    ./discord.nix # discord
    ./docker.nix # docker configuration
    ./fastfetch.nix # fetch tool
    ./fcitx5.nix # input method
    ./fonts.nix # fonts settings
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./kitty.nix # terminal
    ./nix-search/nix-search.nix # TUI to search nixpkgs
    ./nvim.nix # neovim configuration
    ./packages # other packages
    ./proton-vpn.nix # protonvpn gui
    ./plasma-manager.nix
    ./ssh.nix
    ./vscode # vscode fork
    ./xdg-mimes.nix # xdg config
  ];
}
