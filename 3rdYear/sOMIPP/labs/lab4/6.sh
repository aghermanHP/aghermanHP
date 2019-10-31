#! /bin/sh
cut -d ':' -f1,3 /etc/passwd > userList.txt 
sort -t ':' -k2n userList.txt