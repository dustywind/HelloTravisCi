
.PHONY: all

all: hello dissector

clean: ; \
    rm -f hello packet-doip.o

hello: hellotravis.c ; \
    gcc -o hello hellotravis.c

dissector: packet-doip.c ;  \
    gcc \
    -c -shared -fPIC \
    `pkg-config --cflags wireshark` \
    `pkg-config --cflags glib-2.0` \
    packet-doip.c

    #-I/usr/include/wireshark  \
    #-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include \

