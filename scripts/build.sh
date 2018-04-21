#!/usr/bin/env bash

set -e

rm -rf public/

mkdir -p static/comp/css

node_modules/.bin/node-sass css/main.scss static/comp/css/main.css --source-map-embed

hugo -v
