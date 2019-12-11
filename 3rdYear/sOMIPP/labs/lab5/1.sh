ps -Ao pid,user > 11.txt
grep  "gherman" /home/gherman/Documents/aghermanHP/3rdYear/sOMIPP/labs/Lab5/11.txt >1.txt
# ps -Ao user,pid -U gherman
cat 1.txt
exit 0
