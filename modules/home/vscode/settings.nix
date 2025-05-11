{ ... }:
{
  programs.vscode.profiles.default = {
    userSettings = {
      "update.mode" = "none";
      "extensions.autoUpdate" = false; # This stuff fixes vscode freaking out when theres an update
      "window.titleBarStyle" = "custom"; # needed otherwise vscode crashes, see https://github.com/NixOS/nixpkgs/issues/246509

      "window.menuBarVisibility" = "toggle";
      "editor.fontFamily" = "'SF Mono', 'SFMono Nerd Font', 'monospace', monospace";
      "terminal.integrated.fontFamily" = "'SF Mono', 'SFMono Nerd Font'";
      "editor.fontSize" = 18;
      #use Mocha as the base
      workbench.colorTheme = "Catppuccin Mocha";
      # pink as the accent color
      catppuccin.accentColor = "blue";
      # make Mocha specifically very dark
      # (this preserves other flavors!)
      catppuccin.colorOverrides = {
        mocha = {
          base = "#000000";
          mantle = "#010101";
          crust = "#020202";
        };
      };

      "vsicons.dontShowNewVersionMessage" = true;
      # "explorer.confirmDragAndDrop" = false;
      "editor.fontLigatures" = true;
      "editor.minimap.enabled" = false;
      "workbench.startupEditor" = "none";

      "editor.formatOnSave" = true;
      "editor.formatOnType" = true;
      "editor.formatOnPaste" = true;
      "editor.inlayHints.enabled" = "off";

      "workbench.layoutControl.type" = "menu";
      "workbench.editor.limit.enabled" = true;
      "workbench.editor.limit.value" = 10;
      "workbench.editor.limit.perEditorGroup" = true;
      # "workbench.editor.showTabs" = "none";
      # "files.autoSave" = "onWindowChange";
      "breadcrumbs.enabled" = false;
      "editor.renderControlCharacters" = false;
      # "workbench.activityBar.location" = "hidden";
      # "workbench.statusBar.visible" = false;
      "editor.scrollbar.verticalScrollbarSize" = 2;
      "editor.scrollbar.horizontalScrollbarSize" = 2;
      # "editor.scrollbar.vertical" = "hidden";
      "editor.scrollbar.horizontal" = "hidden";
      # "workbench.layoutControl.enabled" = false;

      "editor.mouseWheelZoom" = true;

      # C/C++
      "clangd.arguments" = [
        "--clang-tidy"
        "--inlay-hints=false"
      ];

      # Nix
      "nix.serverPath" = "nixd";
      "nix.enableLanguageServer" = true;
      "nix.serverSettings" = {
        "nixd" = {
          "formatting" = {
            "command   " = [ "nixfmt" ];
          };
        };
      };

      "github.copilot.enable" = {
        "*" = true;
      };
      "git.enableSmartCommit" = true;
    };
  };
}
