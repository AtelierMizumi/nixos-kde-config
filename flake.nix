{
  description = "thuanc177's NixOS Flake configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nur.url = "github:nix-community/NUR";

    nixcord.url = "github:kaylorben/nixcord";

    nix-gaming.url = "github:fufexan/nix-gaming";

    nix-flatpak.url = "github:gmodena/nix-flatpak";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    ghostty.url = "github:ghostty-org/ghostty";

    # San Francisco Fonts | Apple Fonts
    apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
    apple-fonts.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    { nixpkgs, self, ... }@inputs:
    let
      username = "thuanc177";
      system = "x86_64-linux";
      githubUsername = "AtelierMizumi";
      githubEmail = "thuanc177@gmail.com";
      host = "laptop"; # Change this to "desktop" if you want to use the desktop configuration
    in
    {
      nixosConfigurations = {
        #   desktop = nixpkgs.lib.nixosSystem {
        #     inherit system;
        #     modules = [ ./hosts/desktop ];
        #     specialArgs = {
        #       host = "nixos";
        #       inherit self inputs username;
        #     };
        #   };
        laptop = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./hosts/${host} ];
          specialArgs = {
            host = "nixos";
            inherit
              self
              inputs
              username
              system
              githubUsername
              githubEmail
              ;
          };
        };
      };
    };
}
