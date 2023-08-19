{ pkgs, ... }:
{
  home.packages = with pkgs; [
    pavucontrol
    spotify
    vlc
    youtube-dl
    ffmpeg-full
    mediainfo
    jellyfin-media-player
    webcamoid
    gimp
  ];
}
