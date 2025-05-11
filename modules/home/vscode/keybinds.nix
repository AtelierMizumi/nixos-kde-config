{ ... }:
{
  programs.vscode.profiles.default = {
    keybindings = [
      {
        key = "ctrl+s";
        command = "workbench.action.files.saveFiles";
      }
    ];
  };
}
