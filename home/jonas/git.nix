{
  programs.git = {
    enable = true;

    userName = "j-brn";
    userEmail = "me@jbrn.eu";

    extraConfig = {
      core = { editor = "vim"; };
      pull = { ff = "only"; };
      init = { defaultBranch = "master"; };
    };

    ignores = [
      ".idea"
      ".swp"
    ];
  };
}
