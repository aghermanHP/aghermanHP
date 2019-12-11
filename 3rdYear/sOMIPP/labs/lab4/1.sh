#! /bin/sh 
sudo grep -R --exclude-dir=PATTERN  -l --files-with-matches  'ACPI' /var/log/ > errors.log
grep -c 'ACPI' "/home/gheman/Documents/aghermanHP/3rdYear/sOMIPP/labs/lab4/errors.log" > erorcheck.txt
echo "/home/gheman/Documents/aghermanHP/3rdYear/sOMIPP/labs/lab4/errors.log"