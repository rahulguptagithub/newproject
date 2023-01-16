#!/bin/bash
git status
node --max_old_space_size=102400 ./node_modules/@angular/cli/bin/ng build  --configuration develop
git add .
git commit -m "New build for develop added on [`date` ]"
git push origin develop
cap develop deploy
