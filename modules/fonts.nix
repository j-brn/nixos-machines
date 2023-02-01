{ config, pkgs, lib, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;
      antialias = true;
      cache32Bit = true;
      defaultFonts = {
        monospace = [ "Cascadia Code Mono" "Source Code Pro For Powerline" "Roboto Mono" "DejaVu Sans Mono" ];
        sansSerif = [ "Roboto Regular" "DejaVu Sans" ];
        serif = [ "Roboto Slab Regular" "DejaVu Serif" ];
      };
    };

    enableDefaultFonts = true;
    fontDir.enable = true;
    fonts = with pkgs; [
      anonymousPro
      arkpandora_ttf
      caladea
      carlito
      comfortaa
      comic-relief
      crimson
      dejavu_fonts
      inconsolata
      iosevka
      liberation-sans-narrow
      liberation_ttf
      libertine
      mononoki
      montserrat
      nerdfonts
      norwester-font
      open-sans
      powerline-fonts
      roboto
      sampradaya
      source-code-pro

      source-sans-pro
      source-serif-pro

      tai-ahom
      tempora_lgc
      terminus_font
      theano
      ubuntu_font_family
      vistafonts
      corefonts
      cascadia-code

      font-awesome
      font-awesome
      font-awesome_4

      material-icons
    ];
  };

  environment.etc =
    let
      # fonts with src attributes
      font_sources = map (v: v.src) (lib.filter (v: v ? src) config.fonts.fonts);
    in
    builtins.listToAttrs (lib.imap0 (n: v: lib.nameValuePair "src-cache/fonts/${toString n}" { source = builtins.toPath v; }) font_sources);
}
