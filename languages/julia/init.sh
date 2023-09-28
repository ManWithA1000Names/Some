#!/bin/sh
nix run nixpkgs#julia -- -e 'using Pkg; Pkg.generate("Julia")'
