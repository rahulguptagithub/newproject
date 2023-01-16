#!/bin/bash
git status
node --max_old_space_size=102400 ./node_modules/@angular/cli/bin/ng build  --configuration demo
git add .
git commit -m "New build for demo added on [`date` ]"
git push origin demo
cap demo deploy
