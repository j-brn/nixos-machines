{ pkgs, ... }:
{
  users.users.jonas = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "video" "audio" ];
    shell = pkgs.zsh;
    uid = 1000;
  };
}
