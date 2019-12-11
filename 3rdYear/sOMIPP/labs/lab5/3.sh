#  ps -Ao pid aux | grep "/sbin/"
  ps -eo %P,%a | grep "/sbin/" > 3.txt

exit 0