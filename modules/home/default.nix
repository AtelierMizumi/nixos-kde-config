{ ... }:
{
  imports = [
    # better cat command
    ./apple-fonts.nix # Apple SF fonts
    ./browser.nix # firefox based browser
    ./cava.nix # audio visualizer
    ./discord.nix # discord
    ./fastfetch.nix # fetch tool
    ./fonts.nix # fonts settings
    ./gaming.nix # packages related to gaming
    ./git.nix # version control
    ./kitty.nix # terminal
    ./nix-search/nix-search.nix # TUI to search nixpkgs
    ./packages # other packages
    ./ssh.nix
    ./vscode # vscode fork
    ./xdg-mimes.nix # xdg config
  ];
}
