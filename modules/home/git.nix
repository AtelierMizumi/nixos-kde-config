{
  pkgs,
  username,
  githubEmail,
  githubUsername,
  ...
}:
{
  programs.git = {
    enable = true;

    userName = "${githubUsername}";
    userEmail = "${githubEmail}";

    extraConfig = {
      init.defaultBranch = "main";
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
      pull.ff = "only";
      color.ui = true;
      url = {
        "git@github.com:".insteadOf = [
          "gh:"
          "https://github.com/"
        ];
        "git@github.com:frost-phoenix/".insteadOf = "fp:";
      };
      core.excludesFile = "/home/${username}/.config/git/.gitignore";
    };

    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = false;
        diff-so-fancy = true;
        navigate = true;
      };
    };
  };

  home.packages = [ pkgs.gh ]; # pkgs.git-lfs

  xdg.configFile."git/.gitignore".text = ''
    .vscode
    .idea
  '';
}
