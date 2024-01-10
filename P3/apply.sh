#!/bin/sh

for id in $(docker ps -q)
do
	hostname=$(docker exec $id hostname)
	echo ">>>>>> (id:$id hostname:$hostname) <<<<<<"

	docker cp ./scripts/$hostname.sh $id:/tmp/init.sh
	docker cp ./setup_leaf.sh $id:/tmp/
	docker exec $id /bin/sh /tmp/init.sh
done
