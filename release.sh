#!/bin/bash
rm dist/*
npm run build
tar -cvzf dist/release.tar.gz package.json dist/*
