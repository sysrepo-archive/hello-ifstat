LIBXML2_INCLUDE_PATH = /usr/include/libxml2
DEBUG = -ggdb -O0 -v -da -Q -Wstack-protector -fstack-check
PREFIX = /usr
CC_FLAGS = -Wall -g 
CC = gcc

all: \
	ifstat

ifstat:
	$(CC) $(CC_FLAGS) -c if.c
	$(CC) $(CC_FLAGS) -I$(LIBXML2_INCLUDE_PATH) ifstatus.c -lroxml -lxml2 if.o -o ifstat

clean:
	rm -f *.o ifstat

install: ifstat
	install -d $(DESTDIR)/$(PREFIX)/bin/
	cp ifstat $(DESTDIR)/$(PREFIX)/bin/hello-ifstat

