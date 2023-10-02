#!/bin/sh
dune --version
dune init project ocaml
cp -R ./ocaml/* .
cp -R ./ocaml/.* .
rm -rf ./ocaml/
dune build
touch .ocamlformat
echo "_build" >>.gitignore
echo "some_ocaml.install" >>.gitignore
