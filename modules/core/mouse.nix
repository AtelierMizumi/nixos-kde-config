{ config, ... }:
{
  services.libinput = {
    enable = true;

    # disabling mouse acceleration
    mouse = {
      accelProfile = "flat";
    };

    ## disabling touchpad acceleration
    # touchpad = {
    #   accelProfile = "flat";
    # };
  };
}
