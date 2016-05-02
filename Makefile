
.PHONY: all

all: hello 

clean: ; \
    rm -f hello

hello: hellotravis.c ; \
    gcc -o hello hellotravis.c

