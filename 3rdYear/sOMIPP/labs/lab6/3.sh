 #!/bin/bash
echo "*/5 1 * * 2,4,6 /home/gherman/Documents/aghermanHP/3rdYear/sOMIPP/labs/lab6/1.sh" | crontab
#La fiecare minut 5 de la 0 la 5 pentru fiecare ora.
#https://crontab.guru/#0-5/5_1_*_*_*
#crontab -l