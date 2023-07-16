#!/bin/sh -l

set -e

cd /slack-blot
echo "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*************************"

npm run build

node ./dist/index.js