#!/bin/sh
julia -e 'using Pkg; Pkg.generate("Julia")'
cp Julia/* .
cp Julia/.* .
rm -rf Julia
