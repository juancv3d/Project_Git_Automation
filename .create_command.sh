#! /usr/bin/bash


function create(){ 
  cd 
  python3 git_automation.py -r $1
  cd /path/to/your/project
  mkdir $1
  cd $1
  git init
  git remote add origin git@github.com:<username>/$1.git
  echo '#' $1 >> README.md
  git add README.md
  git commit -m "Initial commit"
  git branch -M main
  git push -u origin main
  code .
   }
