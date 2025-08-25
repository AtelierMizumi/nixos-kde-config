{
  pkgs,
  inputs,
  username,
  host,
  githubEmail,
  githubUsername,
  ...
}:
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];
  home-manager = {
    backupFileExtension = "backup";
    useUserPackages = true;
    useGlobalPkgs = true;
    sharedModules = [ inputs.plasma-manager.homeManagerModules.plasma-manager ];
    extraSpecialArgs = {
      inherit
        inputs
        username
        host
        githubEmail
        githubUsername
        ;
    };
    users.${username} = {
      imports = [
        ./../home/default.nix
      ];
      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      # home.stateVersion = "25.11";
      nixpkgs.config.allowUnfree = true;
      programs.home-manager.enable = true;
    };
  };

  programs.fish.enable = true;

  environment.shellAliases = {
    l = "ls -lh --color=auto";
    c = "clear";
    disk = "lsblk -f";
    ff = "fastfetch";
    nit = "nitch";
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "mlocate"
    ];
    shell = pkgs.fish;
  };
  nix.settings.allowed-users = [ "${username}" ];
}
