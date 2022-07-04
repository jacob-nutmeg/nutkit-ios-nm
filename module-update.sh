#!/bin/bash
echo "Copying files"
cp -r ./../packages/nk-tokens/dist/default/ios/. Sources/NutKit/
echo "Completed copy"
VERSION="0.0.4"
#$(jq .version ./../packages/nk-tokens/package.json)
echo "Commiting and setting version"
git add -A
git commit -m $VERSION
git tag $VERSION
git push origin $VERSION

