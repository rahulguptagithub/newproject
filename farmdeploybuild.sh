#!/bin/bash
git status
node --max_old_space_size=102400 ./node_modules/@angular/cli/bin/ng build  --configuration farm
git add .
git commit -m "New build for farm added on [`date` ]"
git push origin farm
cap farm deploy
