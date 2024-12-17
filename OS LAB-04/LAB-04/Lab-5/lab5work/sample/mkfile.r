app: main.o mod_a.o mod_b.o prime.o
	cc -o app main.o mod_a.o mod_b.o prime.o

main.o: main.c inc_a.h inc_b.h inc_prime.h
	cc -c main.c 

mod_a.o: mod_a.c inc_a.h
	cc -c mod_a.c

mod_b.o: mod_b.c inc_b.h 
	cc -c mod_b.c

prime.o: prime.c inc_prime.h 
	cc -c prime.c
