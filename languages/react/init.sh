#!/bin/sh
deno run --allow-read --allow-write --allow-env npm:create-vite-extra@latest tmp_some_react --template deno-react-ts
mv ./tmp_some_react/* ./tmp_some_react/.* .
rm -rf tmp_some_react
