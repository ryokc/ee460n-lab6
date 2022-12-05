# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
FLAGS  = -g -std=c99
# -Wall -Werror
main: all;

sim.o: lc3bsim6.c
	gcc lc3bsim6.c -o sim.o ${FLAGS}

assembler.o: assembler.c
	gcc assembler.c -o assembler.o ${FLAGS}

all: sim.o assembler.o

clean:
	rm -rf *.o *.out *.isa *.diff dumpsim
