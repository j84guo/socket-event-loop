src/client: bin/llist.o bin/tcpcon.o bin/elp.o bin/client.o
	mkdir -p bin
	gcc -o bin/client bin/client.o bin/llist.o bin/tcpcon.o bin/elp.o -pthread
	echo "Built client into bin/client"

bin/llist.o:
	mkdir -p bin
	gcc -c -o bin/llist.o -Wall -pthread -I src src/llist.c

bin/tcpcon.o:
	mkdir -p bin
	gcc -c -o bin/tcpcon.o -Wall -pthread -I src src/tcpcon.c

bin/elp.o:
	mkdir -p bin
	gcc -c -o bin/elp.o -Wall -pthread -I src src/elp.c

bin/client.o:
	mkdir -p bin
	gcc -c -o bin/client.o -Wall -pthread -I src src/client.c
