# https://www.it-swarm.net/ro/linux/ce-este-rss-si-vsz-managementul-memoriei-linux/941536476/

ps -eo pid,size,rss --sort +pid |uniq >5.txt
awk   '{printf "%d %s %f\n",$1, ":",  $3-$2}' 5.txt

exit 0