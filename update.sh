#!/usr/bin/env bash
set -e

VERSION=$1

git add --all
git commit -m "update lmake version: ${VERSION}"
git tag -a build-${VERSION} -m "lmake"

git push origin master
git push --tags

