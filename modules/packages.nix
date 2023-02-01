{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    exa
    fd
    ripgrep
    bat
  ];
}