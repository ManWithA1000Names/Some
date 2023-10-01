{
  description = "A very basic flake";

  inputs = { flake-utils.url = "github:numtide/flake-utils"; };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = import nixpkgs { inherit system; };
      in {

        packages.some = pkgs.stdenv.mkdDerivation {
          pname = "some";
          version = "v0.1.0";
          src = self;
          installPhase = ''
            mkdir -p $out/bin;
            cp -R ./languages/ $out/
            sed "s@PREFIX=.@PREFIX=$out@" ./some > $out/bin/some
            chmod +x $out/bin/some
          '';
        };

        packages.default = self.packages.${system}.some;

        devShells = {
          default = pkgs.mkShell { buildInputs = with pkgs; [ lolcat ]; };
        };

      });
}