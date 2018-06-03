all : bin/quadratic

bin/quadratic : obj/main.o obj/quad.o
	gcc -o bin/quadratic obj/main.o obj/quad.o

obj/main.o :
	gcc -o obj/main.o src/main.c -c

obj/quad.o :
	nasm -o obj/quad.o src/quad.asm -f elf64

clean :
	rm -f bin/quadratic obj/main.o obj/quad.o
