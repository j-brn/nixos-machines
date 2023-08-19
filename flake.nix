{
  description = "My nix flake configuration";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixos-unstable"; };
    nur = { url = "github:nix-community/NUR"; };
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    nix-colors = { url = "github:misterio77/nix-colors"; };
    agenix = { url = "github:ryantm/agenix"; inputs.nixpkgs.follows = "nixpkgs"; };
    nixos-hardware = { url = "github:NixOS/nixos-hardware/master"; };

    disko.url = "github:nix-community/disko";
    disko.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs:
    let
      system = "x86_64-linux";
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in
    {
      lib = import ./lib inputs;

      nixosConfigurations = import ./hosts inputs;

      devShells.${system}.default = pkgs.mkShellNoCC {
        packages = [ pkgs.nixpkgs-fmt inputs.agenix.packages.${system}.default ];
      };
    };
}
