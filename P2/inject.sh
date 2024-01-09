#!/bin/sh

for image in $(docker ps -q)
do
	docker cp ./conf/$(docker exec $image hostname).sh $image:/tmp/config.sh
	docker cp ./conf/setup/multicast.sh $image:/tmp/
	docker cp ./conf/setup/static.sh $image:/tmp/
	docker exec $image /bin/sh /tmp/config.sh
done
