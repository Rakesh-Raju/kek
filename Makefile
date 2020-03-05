CC=gcc
CFLAGS=-g
ASM=as
ASMFLAGS=-g

OBJS=main.c quadratic_s.o sum_array_s.o find_max_s.o strlen_s.o fib_iter_s.o fib_rec_s.o
EXECUTABLE=project3

# Link the object files together into the executable
$(EXECUTABLE): $(OBJS)
	$(CC) $(CFLAGS) -o $(EXECUTABLE) $^

# Compile C source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

# Assemble assembly language source files into object files
%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

clean:
	rm -rf $(EXECUTABLE) $(OBJS)
