#!/bin/bash

ip_addr=$(ifconfig | grep "inet addr" | sed -n 1p | cut -d':' -f2 | cut -d' ' -f1)

for file in $(ls sites); do
	echo $file
 	cp /usr/local/nginx/conf/$file sites/
	sed -i "s/$ip_addr/local_server_ip/g" sites/$file
done


 
