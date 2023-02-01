inputs:

{
  razorcrest = inputs.self.lib.mkSystem {
    hostname = "razorcrest";
    system = "x86_64-linux";
    enableHomeManager = true;
    extraModules = [ inputs.nixos-hardware.nixosModules.lenovo-thinkpad-t490 ];
    extraHomeModules = [ inputs.nix-colors.homeManagerModule ];
  };
}
