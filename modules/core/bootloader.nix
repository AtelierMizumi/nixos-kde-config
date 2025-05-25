{ pkgs, ... }:
{
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  # boot.loader.systemd-boot.configurationLimit = 10;
  # boot.supportedFilesystems = [ "ntfs" ];

  boot.loader = {
    grub = {
      enable = true;
      useOSProber = true;
      copyKernels = true;
      # Actually make Grub a seperate boot entry and not an option in systemd-boot
      efiInstallAsRemovable = false;
      efiSupport = true;
      fsIdentifier = "label";
      devices = [ "nodev" ];
      extraEntries = ''
        menuentry "Reboot" {
          reboot
        }
        menuentry "Poweroff" {
          halt
        }
      '';
    };
  };
}
