#!/bin/sh

for id in $(docker ps -q)
do
	host=$(docker exec $id hostname)

	if [ -e "./conf/$host.sh" ]; then
		echo "Configure router named: $host"
		docker cp ./conf/$host.sh $id:/tmp/config.sh
	elif [ -e "./conf/host/$host.sh" ]; then
		echo "Configure host named: $host"
		docker cp ./conf/host/$host.sh $id:/tmp/config.sh
	else
		echo "Configure leaf named: $host"
		docker cp ./conf/leaf/$host.sh $id:/tmp/config.sh
		docker cp ./conf/setup/leaf.sh $id:/tmp/
	fi

	docker exec $id /bin/sh /tmp/config.sh
done
