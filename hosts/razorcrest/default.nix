{
  imports = [
    ./disk.nix
    ./network.nix
    ./graphics.nix
  ];

  boot.initrd = {
    availableKernelModules = [ "nvme" "dm-snapshot" "kvm-intel" ];
  };

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  system.stateVersion = "23.05";
}
