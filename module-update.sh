#!/bin/bash
echo "Copying files"
cp -r ./../packages/nk-tokens/dist/default/ios/. Sources/NutKit/
echo "Completed copy"
VERSION="0.0.3"
#$(jq .version ./../packages/nk-tokens/package.json)
echo "Commiting and setting version"
git commit -a -m $VERSION
git tag $VERSION
git push origin $VERSION

