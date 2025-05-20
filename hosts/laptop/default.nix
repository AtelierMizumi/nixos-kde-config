{ pkgs, config, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./../../modules/core
  ];

  environment.systemPackages = with pkgs; [
    acpi
    powertop
  ];

  services = {
    power-profiles-daemon.enable = true;
    
    upower = {
      enable = true;
      percentageLow = 30;
      percentageCritical = 10;
      percentageAction = 5;
      criticalPowerAction = "PowerOff";
    };
  };

  boot = {
    kernelModules = [ "acpi_call" ];
    extraModulePackages =
      with config.boot.kernelPackages;
      [
        acpi_call
        cpupower
      ]
      ++ [ pkgs.cpupower-gui ];
  };  
}
