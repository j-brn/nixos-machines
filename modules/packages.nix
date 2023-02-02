{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    exa
    fd
    ripgrep
    bat
  ];
}
