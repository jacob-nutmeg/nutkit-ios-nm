#!/bin/bash
set -e
echo "Copying files"
cp -r ./../packages/nk-tokens/dist/default/ios/. Sources/NutKit/
echo "Completed copy"
echo "TODO: Get real version"
VERSION=$1 #$(jq .version ./../packages/nk-tokens/package.json)
echo "Setting version to $VERSION"
git add -A
git commit -m $VERSION
git tag $VERSION
git push origin $VERSION
echo "Finished"
