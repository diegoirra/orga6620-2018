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
	#TEST imagen por defecto. Se crea archivo en /tests/
	./$(OUTPUT) -o $(TESTS_DIR)/uno.pgm
	#
	
	#TEST imagen 2. 
	./$(OUTPUT) -o $(TESTS_DIR)/dos.pgm -c 0.282-0.007i -w 0.005 -H 0.005
	#
	
	#TEST imprimir por pantalla 0
	./$(OUTPUT) -c 10+0i -r 1x1
	#
	
	#TEST complejo incorrecto
	./$(OUTPUT) -s 0+1 -o $(TESTS_DIR)/complejo_incorrecto.pgm
	#
		
	#TEST
	./$(OUTPUT) -o $(TESTS_DIR)/uno.pgm
	#


clean:
	rm -f $(OUTPUT)
	rm -f $(OUTPUT).s
	rm -f $(TESTS_DIR)/*.res
