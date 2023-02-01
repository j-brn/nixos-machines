{ inputs, ... }:

{
  home.stateVersion = "23.05";
  colorscheme = inputs.nix-colors.colorSchemes.nord;

  imports = [
    ./browser.nix
    ./git.nix
    ./sway.nix
    ./alacritty.nix
    ./zsh.nix
  ];
}
