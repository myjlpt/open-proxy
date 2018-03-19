#!/bin/bash

ip_addr=$(ifconfig | grep "inet addr" | sed -n 1p | cut -d':' -f2 | cut -d' ' -f1)

for file in $(ls sites/*); do
	echo $file
	sed -i "s/$ip_addr/local_server_ip/g" $file
done


 
