{
  config,
  lib,
  pkgs,
  ...
}:
{
  # Enable OpenTabletDriver

  hardware.opentabletdriver.enable = true;
}
# run sudo rmmod wacom
