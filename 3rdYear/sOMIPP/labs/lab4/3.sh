#! /bin/sh
sudo grep 'II\|WW' '/var/log/syslog.1' > all.log
sed -i 's/II/Information/' all.log 
sed -i 's/WW/Warning/' all.log
grep 'Information' '/home/gheman/Documents/sOMIPP/labs/lab4/all.log' > full.log
grep 'Warning' '/home/gheman/Documents/sOMIPP/labs/lab4/all.log' >> full.log 
cat full.log