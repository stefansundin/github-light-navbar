#!/bin/bash -ex
V=$(cat chrome/manifest.json | jq -Mr .version)
rm -f "github-light-navbar-$V.zip"
cd chrome
zip -r "../github-light-navbar-$V.zip" . -x '*.DS_Store' -x '*Thumbs.db'
