#!/bin/bash
#
# Author: José M Beltrán
# Objective: 
#  - Create the content for the AUTHORS file
#
# Creation Date: 12/03/2021
# Last Update: 12/03/2021
# How To Execute:
#  - chmod +x <name of this file>
#  - <name of this file> <fullpath where you want the file: e.g: $(pwd)>
# Parameters:
#   1) The filepath where storage the result
#

git log --format="%aN" | uniq -c | sort -rn | awk '{print $2}' > $1
