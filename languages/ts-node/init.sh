#!/bin/sh
npm init -y
sed -i 's@index\.js@src/index\.ts@' package.json
sed -i '5i\  "type": "module",' package.json

sed -i 8d package.json
sed -i '8i\    "build": "tsc"' package.json

mkdir src/
echo 'console.log("Hello, World!")' >src/index.ts
npm install -D typescript @types/node

printf "%s" '{
  "compilerOptions": {
    "lib": ["ESNext"],
    "module": "esnext",
    "target": "esnext",
    "moduleResolution": "node",
    "moduleDetection": "force",
    "composite": true,
    "strict": true,
    "downlevelIteration": true,
    "skipLibCheck": true,
    "jsx": "react-jsx",
    "allowSyntheticDefaultImports": true,
    "allowJs": true,
    "outDir": "out",
    "types": [
      "node"
    ]
  }
}' >tsconfig.json

echo "out/" >>.gitignore
echo "node_modules" >>.gitignore
