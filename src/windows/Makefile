CFLAGS = -O2 -I../../include

RTFLAG = -shared -MD

RELEASE_DLL = injector.dll
DEBUG_DLL = injectord.dll
RELEASE_STATIC_LIB = injector-static.lib
DEBUG_STATIC_LIB = injectord-static.lib

RELEASE_OBJS = injector.o
DEBUG_OBJS = injectord.o

TARGETS = $(RELEASE_DLL) $(DEBUG_DLL) $(RELEASE_STATIC_LIB) $(DEBUG_STATIC_LIB)

all: $(TARGETS)

injector.o: injector.c
	$(CC) $(CFLAGS) $(RTFLAG) -c -o injector.o injector.c

injectord.o: injector.c
	$(CC) $(CFLAGS) $(RTFLAG) -DDEBUG -c -o injectord.o injector.c

injector.dll: $(RELEASE_OBJS)
	$(CC) $(RTFLAG) -o injector.dll -Wl,--out-implib,injector.lib $(RELEASE_OBJS) -limagehlp

injectord.dll: $(DEBUG_OBJS)
	$(CC) $(RTFLAG) -o injectord.dll -Wl,--out-implib,injectord.lib $(DEBUG_OBJS) -limagehlp

injector-static.lib: $(RELEASE_OBJS)
	$(AR) rc libinjector.a $(RELEASE_OBJS)

injectord-static.lib: $(DEBUG_OBJS)
	$(AR) rc libinjectord.a $(DEBUG_OBJS)

clean:
	rm -rf $(TARGETS) $(RELEASE_OBJS) $(DEBUG_OBJS) injector.lib injectord.lib injector.exp injectord.exp
