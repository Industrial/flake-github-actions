{
  systems,
  checks,
}: {inputs, ...}:
inputs.nix-github-actions.lib.mkGithubMatrix {
  checks =
    inputs.for-all-systems.forAllSystems {
      inherit systems;
      nixpkgs = inputs.nixpkgs;
    } ({
      system,
      pkgs,
    }:
      checks {inherit inputs system pkgs;});
}
