all: add-nbo

# main.c 컴파일
add-nbo: main.c
	gcc -o main main.c

clean:
	rm -f main thousand.bin five-hundred.bin

.PHONY: clean files all

