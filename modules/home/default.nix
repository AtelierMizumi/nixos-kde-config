{ ... }:
{
  imports = [
    # better cat command
    ./apple-fonts.nix # Apple SF fonts
    ./browser.nix # firefox based browser
    ./cava.nix # audio visualizer
    ./discord.nix # discord
    ./fastfetch.nix # fetch tool
    ./gaming.nix # packages related to gaming
    ./ghostty.nix # terminal
    ./git.nix # version control
    ./gtk.nix # gtk theme
    ./kitty.nix # terminal
    ./nix-search/nix-search.nix # TUI to search nixpkgs
    ./packages # other packages
    ./ssh.nix
    ./vscode # vscode fork
    ./xdg-mimes.nix # xdg config
  ];
}
