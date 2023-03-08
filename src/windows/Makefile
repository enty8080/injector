INJECTOR_OBJS = injector.o
CFLAGS = -Wall -fPIC -I../../include -MD -limagehlp

all: libinjector.so libinjector.a

libinjector.so: $(INJECTOR_OBJS)
	$(CC) -shared -o libinjector.so $(INJECTOR_OBJS)

libinjector.a: $(INJECTOR_OBJS)
	$(AR) rcs libinjector.a $(INJECTOR_OBJS)

injector.o: injector.c injector_internal.h ../../include/injector.h

clean:
	$(RM) libinjector.so libinjector.a $(INJECTOR_OBJS)
