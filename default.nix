let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  naersk = pkgs.callPackage sources.naersk { };
  naersk-working = pkgs.callPackage sources.naersk-working { };
in {

  hello-good = naersk-working.buildPackage {
    root = ./hello;
    doDoc = true;
  };

  hello-bad = naersk.buildPackage {
    root = ./hello;
    doDoc = true;
  };

}
