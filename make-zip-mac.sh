#!/bin/bash -ex
V=$(cat chrome/manifest.json | grep '"version"' | grep -o "\d*\.\d*\.\d*")
rm -f "github-light-navbar-$V.zip"
cd chrome
zip -r "../github-light-navbar-$V.zip" . -x '*.DS_Store' -x '*Thumbs.db'
