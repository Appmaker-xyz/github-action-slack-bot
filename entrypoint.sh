#!/bin/sh -l

set -e

env > environment_variables.env

cd /slack-blot
echo "&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&*************************"

npm run build

node ./dist/index.js