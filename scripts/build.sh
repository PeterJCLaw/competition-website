#!/usr/bin/env bash

set -e

rm -rf public/

mkdir -p static/comp/css

node_modules/.bin/sass css/main.scss static/comp/css/main.css --embed-source-map

hugo -v
