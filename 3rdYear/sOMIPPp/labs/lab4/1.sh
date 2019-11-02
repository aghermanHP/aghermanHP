#! /bin/sh 
sudo grep -R --exclude-dir=PATTERN  -l --files-with-matches  'ACPI' /var/log/ > errors.log
grep -c 'ACPI' "/home/gheman/Documents/sOMIPP/labs/lab4/errors.log" > erorcheck.txt
echo "open file errors.log or for num of lines of errors.log"