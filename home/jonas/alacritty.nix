{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.9;
      env.TERM = "xterm-256color";
      font = {
        size = 12;
      };
      colors = {
        # Default colors
        primary = {
          background = "#2E3440";
          foreground = "#D8DEE9";
        };

        # Normal colors
        normal = {
          black = "#3B4252";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#88C0D0";
          white = "#E5E9F0";
        };

        # Bright colors
        bright = {
          black = "#4C566A";
          red = "#BF616A";
          green = "#A3BE8C";
          yellow = "#EBCB8B";
          blue = "#81A1C1";
          magenta = "#B48EAD";
          cyan = "#8FBCBB";
          white = "#ECEFF4";
        };
      };
    };
  };
}
