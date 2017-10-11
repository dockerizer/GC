# garbage collection scripts for private registry cleaning
# M Matos marco@marco.ae


REG-SERVER:= registry.127.0.0.1.xip.io
CONTAINER-NAME:= egistry.127.0.0.1.xip.io:5000 	# name.of.your.registry.CONTAINER

PHONY: all test delete

all: 

test:
	docker exec -ti $(CONTAINER-NAME) bin/registry garbage-collect --dry-run /etc/docker/registry/config.yml
	
delete:
	docker exec -ti $(CONTAINER-NAME) bin/registry garbage-collect /etc/docker/registry/config.yml

