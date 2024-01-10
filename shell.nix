let
  pkgs = import <nixpkgs> {
  };
in

pkgs.mkShell {
  buildInputs = [
    (pkgs.callPackage ./pc.nix {})
  ];
}
