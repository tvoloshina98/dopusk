.PHONY: main
main: test/main.o src/sqr.o 
	gcc test/main.o src/sqr.o -o main -lm

.PHONY: test	
test: test/maintest.o src/sqr.o src/sqrtest.o
	gcc test/maintest.o src/sqr.o src/sqrtest.o -o testik -lm -Ithirdparty
	./testik

test/maintest.o: test/maintest.c
	gcc test/maintest.c -c -o test/maintest.o -Ithirdparty

test/main.o: test/main.c
	gcc test/main.c -c -o test/main.o -Isrc

src/sqr.o: src/sqr.c
	gcc src/sqr.c -c -o src/sqr.o

src/sqrtest.o: src/sqrtest.c
	gcc src/sqrtest.c -c -o src/sqrtest.o -Ithirdparty

