{
  systemd.network.enable = false;

  networking = {
    dhcpcd.enable = false;
    firewall.enable = true;
    usePredictableInterfaceNames = true;

    networkmanager = {
      enable = true;
      dns = "none";
      ethernet.macAddress = "random";
      wifi.macAddress = "random";
      unmanaged = [ "interface-name:docker0;veth*" ];
    };
  };
}
