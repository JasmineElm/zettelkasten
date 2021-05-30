#!/usr/bin/env bash

out_of_sync=$(git status --porcelain | wc -l)

datestamp() {
  date +"%Y-%m-%d %H:%M"
} 

pushit() {
  git pull
  git add .
  git commit -q -m "sync: $(datestamp)"
  git push

}

## no changes OR sync-it

[ "$out_of_sync" -eq 0 ] || pushit

