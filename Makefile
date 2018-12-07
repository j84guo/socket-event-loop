.PHONY: clean client

all: client

client: client.c llist.c llist.h tcpcon.c tcpcon.h elp.c elp.h
	mkdir -p bin
	gcc -o bin/client -Wall -pthread -I . client.c llist.c tcpcon.c elp.c
	@echo "Built into bin/client"

clean:
	rm -rf bin
