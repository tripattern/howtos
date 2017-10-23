#!/bin/bash
(
  cd "${1}"
  for i in $(ls -d */)
  do
    (
      cd "$i"
      git config user.name "tripattern"
      git config user.email "systems@tripattern.com"
      git pull --rebase
      git reset --hard HEAD
    )
  done 
)
