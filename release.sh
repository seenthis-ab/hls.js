#!/bin/bash
rm dist/*
npm run build
tar -cvzf release.tar.gz package.json dist
