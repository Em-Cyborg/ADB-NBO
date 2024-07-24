all: add-nbo files

add-nbo: main.c
	gcc -o main main.c

# 파일 생성을 위한 새로운 타겟
files: thousand.bin five-hundred.bin

thousand.bin:
	echo -n -e \\x00\\x00\\x03\\xe8 > thousand.bin

five-hundred.bin:
	echo -n -e \\x00\\x00\\x01\\xf4 > five-hundred.bin

clean:
	rm -f main thousand.bin five-hundred.bin

.PHONY: clean files

