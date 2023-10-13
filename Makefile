test:
	./bin/chip8 rom/test_opcode.ch8 10

linux:
	mkdir -p bin
	gcc -Wall -o bin/chip8 main.c chip8.c -Wall `sdl2-config --libs --cflags`

mac:
	mkdir -p bin
	gcc -Wall -Werror -Wno-unused-function -Wno-unused-variable -lSDL2 main.c chip8.c -o bin/chip8

windows:
	mkdir -p bin
	gcc -Wall -o bin/chip8.exe main.c chip8.c -Wall `sdl2-config --libs --cflags`
