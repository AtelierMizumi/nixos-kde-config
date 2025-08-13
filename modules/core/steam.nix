{ pkgs, ... }:
{
  hardware.xone.enable = true; # support for the xbox controller USB dongle
  programs = {
    
    gamescope = {
      enable = true;
      capSysNice = true;
    };
    steam = {
      enable = true;

      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      gamescopeSession.enable = true;
      localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers

      extraCompatPackages = [ pkgs.proton-ge-bin ];
      package = pkgs.steam.override {
        extraPkgs =
          pkgs: with pkgs; [
            gamescope
          ];
      };
    };
  };
}
