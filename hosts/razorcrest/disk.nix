{
  disko.devices = {
    disk = {
      nvme = {
        device = "/dev/nvme0n1";
        type = "disk";
        content = {
          type = "table";
          format = "gpt";
          partitions = [
            {
              name = "esp";
              type = "partition";
              start = "1MiB";
              end = "512MiB";
              bootable = true;
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
              };
            }
            {
              name = "nixos";
              type = "partition";
              start = "512MiB";
              end = "100%";
              content = {
                type = "luks";
                name = "nixos";
                content = {
                  type = "lvm_pv";
                  vg = "nixos";
                };
              };
            }
          ];
        };
      };
    };

    lvm_vg = {
      nixos = {
        type = "lvm_vg";
        lvs = {
          root = {
            type = "lvm_lv";
            size = "450GB";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
              mountOptions = [
                "defaults"
              ];
            };
          };

          swap = {
            type = "lvm_lv";
            size = "100%FREE";
            content = {
              type = "swap";
              randomEncryption = true;
            };
          };
        };
      };
    };

    nodev = {
      "/tmp" = {
        fsType = "tmpfs";
      };
    };
  };
}
