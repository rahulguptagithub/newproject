#!/bin/bash
git status
node --max_old_space_size=102400 ./node_modules/@angular/cli/bin/ng build  --configuration elmaster
git add .
git commit -m "New build for el master added on [`date` ]"
git push origin el-master
cap elmaster deploy
