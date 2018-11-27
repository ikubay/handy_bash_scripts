while true; do
    printf "$(date)\n" >> cpu_log.txt;
    ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10 >> cpu_log.txt; 
    printf "\n" >> cpu_log.txt;
    sleep 60; 
done
