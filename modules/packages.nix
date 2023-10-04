{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    eza
    dnsutils
    mtr
    fd
    ripgrep
    bat
  ];
}
