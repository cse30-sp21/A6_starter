#
# CSE30 Makefile
#
# we declare the object we want to build in the variable EXE
# we list the objects we want to compile (from c) in OBJS
#
# we provide a phony target clean to rm all the .o files
#

EXE = convertfp
OBJS = main.o fpconvert.o
LIBS = 
# CC = arm-linux-gnueabi-gcc 
CC = gcc 
CFLAGS = -g -O0
CFLAGS +=  --std=gnu99

.PHONY: clean

$(EXE) : $(OBJS)
	$(CC) -o $@ $(CFLAGS) $(OBJS) $(LIBS)

main.o : main.c
fpconvert.o : fpconvert.S
	$(CC) -c $(CFLAGS) -gstabs+ fpconvert.S

clean :
	rm -f $(OBJS)
	rm $(EXE)

