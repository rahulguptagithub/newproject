#!/bin/bash
git status
node --max_old_space_size=102400 ./node_modules/@angular/cli/bin/ng build  --configuration staging 
git add .
git commit -m "[`date` ] new build for staging added"
git push origin staging
cap staging deploy
