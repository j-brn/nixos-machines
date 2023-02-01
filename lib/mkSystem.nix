inputs:

{ hostname
, system
, extraSpecialArgs ? { }
, extraModules ? [ ]
, enableHomeManager ? false
, extraHomeModules ? [ ]
}:

inputs.nixpkgs.lib.nixosSystem {
  inherit system;
  specialArgs = { inherit inputs; } // extraSpecialArgs;
  modules = [
    "${inputs.self}/modules"
    "${inputs.self}/hosts/${hostname}"
    inputs.agenix.nixosModule
    inputs.disko.nixosModules.disko
  ] ++ inputs.nixpkgs.lib.optionals enableHomeManager [
    inputs.home-manager.nixosModule
    "${inputs.self}/home"
    "${inputs.self}/hosts/${hostname}/home"
    {
      home-manager = {
        useGlobalPkgs = true;
        extraSpecialArgs = { inherit inputs; } // extraSpecialArgs;
        sharedModules = extraHomeModules;
      };
    }
  ] ++ extraModules;
}
