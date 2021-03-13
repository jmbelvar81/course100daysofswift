#!/bin/bash
#
# Author: José M Beltrán
# Objective: 
#  - Create the directories for the course
#  - Show an "ultrasimple" script in bash
#
# Creation Date: 12/03/2021
# Last Update: 12/03/2021
# How To Execute:
#  - chmod +x <name of this file>
#  - ./<name of this file> <"path where you want the files": e.g $(pwd)>
# Parameters:
#  1) The Path to the directory where create the files
#

cd $1

for numday in {1..100}
do 

  if [ numday -lt 10 ]; then
    tmpDirName="day0${numday}"
  else
    tmpDirName="day${numday}"
  fi
  mkdir "$tmpDirName"
  echo "Created the Directory: $tmpDirName"
  touch "$tmpDirName/LESSON${numday}.md"

done

echo "Congrats!!! - All your boilerplate to write your notes for the course was done!!!"
