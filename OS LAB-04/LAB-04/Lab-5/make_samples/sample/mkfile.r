app: main.o mod_a.o mod_b.o 
	gcc -o app main.o mod_a.o mod_b.o

main.o: main.c inc_a.h inc_b.h
	gcc -c main.c -o main.o

mod_a.o: mod_a.c inc_a.h
	gcc -c mod_a.c -o mod_a.o

mod_b.o: mod_b.c inc_b.h 
	gcc -c mod_b.c -o mod_b.o

clean:
	rm -f *.o
	rm -f app
