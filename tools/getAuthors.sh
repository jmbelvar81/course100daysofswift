#!/bin/bash
# Parameters:
#   1) The filepath where storage the result
#

git log --format="%aN" | sort | uniq -c | sort -rn | awk '$1>=$THRESHOLD {$1=""; print $0}' | cut -d" " -f2- > $1
