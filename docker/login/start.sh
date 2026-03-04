#!/bin/bash
set -e

pwd

echo "Installing dependencies..."
npm i -g typescript

npm i

echo "Compiling TypeScript..."
npm run compile

exec node out/index.js --port 3000
EOF