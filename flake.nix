{
  description = "NixOS config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations."MUUN" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };

      modules = [ ./hosts/MUUN/configuration.nix ];
    };
  };
}
