LIBXML2_INCLUDE_PATH = /usr/include/libxml2
LIBRARIES = -L/opt/dev/libsysrepo/bin 
DEBUG = -ggdb -O0 -v -da -Q -Wstack-protector -fstack-check
CC_FLAGS = -Wall -g 
CC = gcc

all: \
	sysrepo

sysrepo:
	$(CC) $(CC_FLAGS) -c if.c
	$(CC) $(CC_FLAGS) -I$(LIBXML2_INCLUDE_PATH) $(LIBRARIES) ifstatus.c -lroxml -lxml2 if.o -o ifstat

clean:
	rm *.o ifstat
