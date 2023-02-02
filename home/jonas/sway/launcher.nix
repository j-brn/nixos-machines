{ pkgs, config, ... }:
let
  launcher =
    let
      wofi = "${pkgs.wofi}/bin/wofi";
    in
    pkgs.writeShellScript "launcher" ''
      ${wofi} \
        --show drun \
        --insensitive \
        --gtk-dark \
        --allow-images \
        --no-actions
    '';

  modkey = config.windowManager.sway.config.modkey;
in
{
  wayland.windowManager.sway.config.keybindings."${modkey}+d" = "exec ${launcher}";
}
