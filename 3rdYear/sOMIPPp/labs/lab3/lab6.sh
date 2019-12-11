#! /bin/bash

if [ $PWD == ~ ]
then
echo "the scrip run from Home directory"
echo pwd
exit 0
else
echo "Error the scrip don't run from Home directory"
exit 1
fi