#!/bin/sh
julia -e 'using Pkg; Pkg.generate("Julia")'
cp -r Julia/* .
cp -r Julia/.* .
rm -rf Julia
