# Victor Forbes - 9293394

ifdef case
	in = < cases/$(case).in
	out = > cases/$(case).out
endif

all:
	gcc -o main src/*.c -I./includes
debug:
	gcc -o main src/*.c -I./includes -g -Wall
run:
	./main $(in)
fullrun:
	valgrind -v --track-origins=yes --leak-check=full --show-leak-kinds=all ./main $(in)
out:
	./main $(in) $(out)
zip:
	zip -r 9293394.zip *