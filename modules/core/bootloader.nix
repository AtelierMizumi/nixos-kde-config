{ pkgs, ... }:
{
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;
  # boot.loader.systemd-boot.configurationLimit = 10;
  # boot.supportedFilesystems = [ "ntfs" ];

  boot.loader = {
    # Just want to remind myself that I need this line
    # for the bootloader to be detected
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      useOSProber = false;
      copyKernels = true;
      # Actually make Grub a separate boot entry and not an option in systemd-boot
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
