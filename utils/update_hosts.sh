hosts_file=/etc/hosts
docker ps | tail -n +2 | awk 'BEGIN {FS = " +"}; {print $(NF)}' | while read container_name; 
do 
    echo $container_name
    address=$(docker inspect --format "{{.NetworkSettings.IPAddress}}" $container_name); 
    sed -i "/$container_name/d" $hosts_file; 
    echo $address $container_name >> $hosts_file; 
done
