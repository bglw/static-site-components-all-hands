#!/usr/bin/env bash

cd components

echo "Cleaning"
rm -rf package-lock.json
rm -rf ./node_modules

#Standard npm install
echo "Install"
npm install
#Dev npm install for gulp, webpack, etc
echo "Dev install"
npm install --only=dev

echo "Build"
#Run static gulp tasks
npm run build
