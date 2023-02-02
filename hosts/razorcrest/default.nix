{ pkgs, ... }:
{
  imports = [
    ./disk.nix
    ./network.nix
    ./graphics.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_lqx;
    initrd.availableKernelModules = [ "nvme" "dm-snapshot" "kvm-intel" ];
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  hardware.enableRedistributableFirmware = true;

  system.stateVersion = "23.05";
}
