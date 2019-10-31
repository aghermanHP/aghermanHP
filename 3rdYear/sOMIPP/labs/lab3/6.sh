#!/bin/bash
 for i in "$PWD" ; do echo $i ; done 

flag=`echo $i|awk '{print match($0,"gheman")}'`;
echo "$flag"

if [ $flag -gt 0 ];then
    echo "this path is from home; Success";
else
    echo "this path have no home; Fail";

fi
 