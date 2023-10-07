{ config, pkgs, ... }:

{
  age.secrets.tailscaleAuthKey.file = ../secrets/tailscaleAuthKey;
  environment.systemPackages = [ pkgs.tailscale ];

  services.tailscale = {
    enable = true;
    useRoutingFeatures = "client";

    authKeyFile = config.age.secrets.tailscaleAuthKey.path;
  };
}
