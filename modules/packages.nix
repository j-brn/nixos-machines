{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    eza
    dnsutils
    mtr
    nmap
    fd
    ripgrep
    bat
  ];
}
