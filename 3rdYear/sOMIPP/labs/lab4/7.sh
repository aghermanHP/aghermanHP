#! /bin/sh
man bash > allman.txt
grep -o -w '\w\{3\}' allman.txt  > mann.txt
head -n 3 mann.txt > man.txt