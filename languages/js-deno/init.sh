#!/bin/sh
deno init
sed -i 's@main\.ts@main\.js@' deno.json

sed -i 's@: number@@g' main.ts

sed -i 's@main\.ts@main.js@' main_test.ts

mv main.ts main.js
mv main_test.ts main_test.js

echo "out/" >>.gitignore
