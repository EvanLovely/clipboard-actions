#!/bin/bash

x="$(pbpaste)"

IFS=$'\n'
for i in $(echo "$x" | egrep --only-matching '[a-z]*://\S*' | sed s',)$,,'); do
  open $i
done
unset IFS