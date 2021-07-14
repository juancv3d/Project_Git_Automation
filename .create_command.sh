#! /usr/bin/bash

function create(){ 
  cd 
  python3 git_automation.py -r $1
  cd 'insert here your project directory'
  mkdir $1
  cd $1
  git init
  git remote add origin https://github.com/<username>/$1.git
  touch README.md
  git add .
  git commit -m "Initial commit"
  git push -u origin main
  code .
   }
