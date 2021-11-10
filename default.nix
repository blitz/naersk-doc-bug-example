let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  naersk = pkgs.callPackage sources.naersk { };
in {

  hello = naersk.buildPackage {
    root = ./hello;
    doDoc = true;
  };

}
