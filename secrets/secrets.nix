let
  jonas = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG3eO5g2TPLcE3pzt/6XiGqGjbAeCr41s+5mSR0aZuHt";
  razorcrest = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOCMuFCz316uxn3Buzdnk0z8KUZkRo3yi/VnrmWXY2KV";
in
{
  tailscaleAuthKey.publicKeys = [ jonas razorcrest ];
}