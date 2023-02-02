{ pkgs, ... }:
{
  home.packages = with pkgs; [
    spotify
    vlc
    youtube-dl
    ffmpeg-full
    mediainfo
    jellyfin-media-player
    webcamoid
  ];
}
