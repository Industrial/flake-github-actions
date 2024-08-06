{
  description = "A reusable Nix flake for adding github actions to a flake in a standardized way.";
  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
  };
  outputs = inputs @ {self, ...}: {
    github-actions = import ./lib/github-actions.nix;
  };
}
