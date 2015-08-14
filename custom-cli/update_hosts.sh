hosts_file=/etc/hosts
docker ps | tail -n +2 | awk 'BEGIN {FS = " +"}; {print $(NF-1)}' | while read container_name; 
do 
    address=$(docker inspect --format "{{.NetworkSettings.IPAddress}}" $container_name); 
    sed -i "/$container_name/d" $hosts_file; 
    echo $address $container_name >> $hosts_file; 
done
