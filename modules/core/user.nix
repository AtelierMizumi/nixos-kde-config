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
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    backupFileExtension = "backup";
    useUserPackages = true;
    useGlobalPkgs = true;
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
      imports = [ ./../home/default.nix ];
      home.username = "${username}";
      home.homeDirectory = "/home/${username}";
      home.stateVersion = "25.11";
      programs.home-manager.enable = true;
    };
  };

  programs.fish.enable = true;

  environment.shellAliases = {
    l = "ls -lChs";
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
    ];
    shell = pkgs.fish;
  };
  nix.settings.allowed-users = [ "${username}" ];
}
