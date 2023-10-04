{ pkgs, ... }:
{
  home.packages = with pkgs; [
    (jetbrains.plugins.addPlugins jetbrains.clion [ "github-copilot" ])
    (jetbrains.plugins.addPlugins jetbrains.phpstorm [ "github-copilot" ])
    (jetbrains.plugins.addPlugins jetbrains.pycharm-community [ "github-copilot" ])
    (jetbrains.plugins.addPlugins jetbrains.rust-rover [ "github-copilot" ])
  ];
}
