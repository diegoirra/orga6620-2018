CC=gcc
CFLAGS := -g -Wall
INPUT=tp0.c
OUTPUT=tp0
TESTS_DIR=tests

compile:
	$(CC) $(CFLAGS) -o $(OUTPUT) $(INPUT) -lm	

asm:
	$(CC) $(CFLAGS) -O0 -S $(INPUT)

test: compile
	$(info TEST imagen por defecto. Archivo creado en /tests/)
	./$(OUTPUT) -o $(TESTS_DIR)/uno.pgm
	

	
	
	./$(OUTPUT) -o $(TESTS_DIR)/dos.pgm -c 0.282-0.007i -w 0.005 -H 0.005




clean:
	rm -f $(OUTPUT)
	rm -f $(OUTPUT).s
	rm -f $(TESTS_DIR)/*.res
