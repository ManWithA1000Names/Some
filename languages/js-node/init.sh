#!/bin/sh
npm init -y
sed -i 's@index\.js@src/index\.js@' package.json
sed -i '5i\  "type": "module",' package.json
mkdir src/
echo 'console.log("Hello, World!")' >src/index.js
echo "node_modules/" >>.gitignore
