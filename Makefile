# Compiler and linker settings
CC=gcc
CFLAGS=-c
LDFLAGS=-L. -lrustposix

# Default source files
SRC=lind_platform.c
OBJ=$(SRC:.c=.o)

# Pattern rule for object files
%.o: %.c
	@echo "Don't forget export LD_LIBRARY_PATH"
	$(CC) $(CFLAGS) $< -o $@

# Default target
all:
	@echo "Usage: make <base_name_of_your_c_file>"
	@echo "Example: make getpid"
	@echo "Don't forget export LD_LIBRARY_PATH"

# Dynamic target for compiling programs with a main function
%: %.o $(OBJ)
	$(CC) $< $(OBJ) $(LDFLAGS) -o $@

# A convenience target for the given example
getpid: getpid.o $(OBJ)
	$(CC) $< $(OBJ) $(LDFLAGS) -o $@

# Clean the build
clean:
	rm -f *.o *~ core

