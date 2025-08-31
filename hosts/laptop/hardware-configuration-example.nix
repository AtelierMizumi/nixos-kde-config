# This is an example hardware-configuration.nix file for a laptop.
# It is meant to be used as a reference for creating your own hardware-configuration.nix
# file.
# You should start by copying yours from /etc/nixos/hardware-configuration.nix
# and then modify it as needed with the help of this file.
# See the NixOS manual for more information:
# https://nixos.org/manual/nixos/stable/index.html#sec-configuration

{
  config,
  lib,
  modulesPath,
  ...
}:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  boot.initrd.availableKernelModules = [
    "xhci_pci"
    "thunderbolt"
    "vmd"
    "ahci"
    "nvme"
    "usb_storage"
    "usbhid"
    "sd_mod"
  ];
  boot.initrd.kernelModules = [ ];
  boot.kernelParams = [
    "acpi_backlight=native"
    "i915.force_probe=46a6"
  ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];
  boot.extraModprobeConfig = ''
    options hid_apple fnmode=0
  '';

  fileSystems."/" = {
    device = "/dev/disk/by-uuid/0c26eff3-fddd-41c3-98f2-02705a2ec2cc";
    fsType = "ext4";
  };

  boot.initrd.luks.devices."luks-2d2d6f61-bfa8-4802-88d3-ab19e925d4ae".device =
    "/dev/disk/by-uuid/2d2d6f61-bfa8-4802-88d3-ab19e925d4ae";

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/0907-BC15";
    fsType = "vfat";
    options = [
      "fmask=0077"
      "dmask=0077"
    ];
  };

  fileSystems."/home/thuanc177/Drives/Old-Linux-Drive" = {
    device = "/dev/disk/by-uuid/54d477d8-6b81-4548-a67f-99f6d3372198";
    fsType = "ext4";
    options = [
      "users"
      "rw"
      "auto"
      "nofail"
      "exec"
    ];
  };

  fileSystems."/home/thuanc177/Drives/Baracuda" = {
    device = "/dev/disk/by-uuid/eb27d41c-e4b5-4695-a42c-31cd696be7dd";
    fsType = "ext4";
    options = [
      "users"
      "rw"
      "auto"
      "nofail"
      "exec"
    ];
  };

  fileSystems."/home/thuanc177/Drives/Windows" = {
    device = "/dev/disk/by-uuid/CCFA5C7DFA5C662C";
    fsType = "ntfs";
    options = [
      "users"
      "rw"
      "auto"
      "nofail"
      "exec"
    ];
  };

  systemd.services.fix-drive-ownership = {
    description = "Fix ownership of external drives";
    after = [
      "home-thuanc177-Drives-Old\\x2dLinux\\x2dDrive.mount"
      "home-thuanc177-Drives-Baracuda.mount"
      "home-thuanc177-Drives-Windows.mount"
    ];
    wantedBy = [ "multi-user.target" ];
    script = ''
      chown -R thuanc177:users /home/thuanc177/Drives/Old-Linux-Drive
      chown -R thuanc177:users /home/thuanc177/Drives/Baracuda
      chown -R thuanc177:users /home/thuanc177/Drives/Windows
    '';
    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
    };
  };

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp43s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp0s20f3.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
