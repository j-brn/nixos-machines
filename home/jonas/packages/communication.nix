{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord-canary
    teamspeak_client
    signal-desktop
    jitsi
  ];
}
