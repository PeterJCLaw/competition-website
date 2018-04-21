#!/usr/bin/env bash

set -e

rm -rf public/

mkdir -p static/css

node_modules/.bin/node-sass css/main.scss static/css/main.css --source-map-embed

hugo -v
