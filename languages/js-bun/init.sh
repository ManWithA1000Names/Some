#!/bin/sh
bun init -y
sed -i 's@index\.ts@src/index\.js@' package.json
sed -i '7,10d' package.json
sed -i '7i\  }' package.json
sed -i 's@index\.ts@index\.js@' README.md
mkdir src
mv index.ts src/index.js
rm tsconfig.json
rm -rf node_modules
rm bun.lockb
