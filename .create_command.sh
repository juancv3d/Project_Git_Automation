#! /usr/bin/bash

function create(){ 
  cd 
  python3 git_automation.py -r $1
  cd /mnt/c/Users/juanc/Documents/Python_Projects
  mkdir $1
  cd $1
  git init
  git remote add origin https://github.com/juancv3d/$1.git
  touch README.md
  git add .
  git commit -m "Initial commit"
  git push -u origin master
  code .
   }