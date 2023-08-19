{ pkgs, ... }:
{
  hardware.bluetooth.enable = true;
  services.blueman.enable = true;

  systemd.services.bluetooth.serviceConfig.ExecStart = [
    ""
    "${pkgs.bluez}/libexec/bluetooth/bluetoothd --noplugin=sap,avrcp"
  ];
}