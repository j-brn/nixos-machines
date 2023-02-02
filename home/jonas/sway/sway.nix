{ config, pkgs, lib, self, ... }:

let
  mod = "Mod1";

  launcher =
    pkgs.writeShellScript "launcher" ''
      ${pkgs.wofi}/bin/wofi \
        --show drun \
        --insensitive \
        --gtk-dark \
        --allow-images \
        --no-actions
    '';
in

{
  wayland.windowManager.sway = {
    enable = true;
    xwayland = true;
    wrapperFeatures.gtk = true;

    extraSessionCommands = ''
      export SDL_VIDEODRIVER=wayland
      export QT_QPA_PLATFORM=wayland
      export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"
      export _JAVA_AWT_WM_NONREPARENTING=1
      export BEMENU_BACKEND=wayland
    '';

    config = {
      input = {
        "type:keyboard" = {
          xkb_layout = "eu";
          xkb_options = "ctrl:swapcaps";
        };

        "type:mouse" = {
          "accel_profile" = "flat";
          "pointer_accel" = "0";
        };
      };

      output = {
        "*" = {
          bg = "${./wallpaper.jpg} fill";
        };
      };

      keybindings = {
        "${mod}+Shift+q" = "kill";
        "${mod}+Left" = "focus left";
        "${mod}+Down" = "focus down";
        "${mod}+Up" = "focus up";
        "${mod}+Right" = "focus right";

        "${mod}+Shift+Left" = "move left";
        "${mod}+Shift+Down" = "move down";
        "${mod}+Shift+Up" = "move up";
        "${mod}+Shift+Right" = "move right";

        "${mod}+v" = "split v";
        "${mod}+h" = "split h";

        "${mod}+s" = "layout stacking";
        "${mod}+w" = "layout tabbed";
        "${mod}+e" = "layout toggle split";
        "${mod}+r" = "mode resize";

        "${mod}+f" = "fullscreen toggle";
        "${mod}+Shift+space" = "floating toggle";

        "${mod}+1" = "workspace 1";
        "${mod}+2" = "workspace 2";
        "${mod}+3" = "workspace 3";
        "${mod}+4" = "workspace 4";
        "${mod}+5" = "workspace 5";
        "${mod}+6" = "workspace 6";
        "${mod}+7" = "workspace 7";
        "${mod}+8" = "workspace 8";
        "${mod}+9" = "workspace 9";
        "${mod}+0" = "workspace 10";

        "${mod}+Shift+1" = "move container to workspace 1";
        "${mod}+Shift+2" = "move container to workspace 2";
        "${mod}+Shift+3" = "move container to workspace 3";
        "${mod}+Shift+4" = "move container to workspace 4";
        "${mod}+Shift+5" = "move container to workspace 5";
        "${mod}+Shift+6" = "move container to workspace 6";
        "${mod}+Shift+7" = "move container to workspace 7";
        "${mod}+Shift+8" = "move container to workspace 8";
        "${mod}+Shift+9" = "move container to workspace 9";
        "${mod}+Shift+0" = "move container to workspace 10";

        "${mod}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
        "${mod}+d" = "exec ${launcher}";
      };
    };
  };
}
