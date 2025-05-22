{ inputs, username, ... }:
{
  imports = [ inputs.nixcord.homeModules.nixcord ];

  home.file.".config/discord/settings.json".text = ''
  # This is created to be written into
  '';

  programs.nixcord = {
    enable = true; # Enable Nixcord (It also installs Discord)
    vesktop.enable = true; # Vesktop
    dorion.enable = false; # Dorion
    # quickCss = "some CSS";  # quickCSS file
    # config = {
    #   useQuickCss = false;   # use out quickCSS
    #   # themeLinks = [        # or use an online theme
    #   #   "https://raw.githubusercontent.com/link/to/some/theme.css"
    #   # ];
    #   frameless = true;                   # Set some Vencord options
    #   plugins = {
    #     hideAttachments.enable = true;    # Enable a Vencord plugin
    #     ignoreActivities = {              # Enable a plugin and set some options
    #       enable = true;
    #       ignorePlaying = true;
    #       ignoreWatching = true;
    #       # ignoredActivities = [ "someActivity" ];
    #     };
    #   };
    # };
  };
}
