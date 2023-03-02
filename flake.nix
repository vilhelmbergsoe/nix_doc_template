{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nix-pandoc.url = "github:serokell/nix-pandoc";
    nix-pandoc.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, nixpkgs, nix-pandoc, flake-utils }: {
    defaultPackage = builtins.mapAttrs (system: pkgs: nix-pandoc.mkDoc.${system} {
      name = "doc";
      src = ./.;
    }) nixpkgs.legacyPackages;
  };
}
