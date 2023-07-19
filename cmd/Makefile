UNAME_S := $(shell uname -s)
CFLAGS = -Wall -I../include

all: injector

ifeq ($(UNAME_S),Darwin)
OBJS = main.o ya_getopt.o
OS = macos
else
OBJS = main.o
OS = linux
endif

injector: $(OBJS) ../build/libinjector.a
	$(CC) -o injector $(OBJS) ../build/libinjector.a

main.o: main.c
ya_getopt.o: ../util/ya_getopt.c
	$(CC) $(CFLAGS) -c ../util/ya_getopt.c
../build/libinjector.a:
	cd ..; cmake -B build; cd build; make

clean:
	$(RM) injector $(OBJS)
