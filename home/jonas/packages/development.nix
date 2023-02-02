{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.clion
    jetbrains.phpstorm
    jetbrains.pycharm-community
    jetbrains.idea-community
  ];
}
