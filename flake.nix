{
  description = "pandoc template";
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.05;
    flake-utils.url = github:numtide/flake-utils;
  };
  outputs = { self, nixpkgs, flake-utils }:
    with flake-utils.lib; eachSystem allSystems (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in rec {
      devShell = pkgs.mkShell { buildInputs = [ pkgs.pandoc pkgs.entr pkgs.gnumake pkgs.texlive.combined.scheme-small ]; };
    });
}
